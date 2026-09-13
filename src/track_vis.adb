
with interfaces; use interfaces;

with ada.text_io; use ada.text_io;
with ada.strings.fixed;
with ada.command_line;
with ada.directories;
with ada.streams.stream_io;

with ego_telemetry;


procedure track_vis is

   package cli renames ada.command_line;
   package dir renames ada.directories;
   package sio renames ada.streams.stream_io;

   NL : constant String := character'val (13) & character'val (10);


   --test_data : string (1 .. 533 * 1000) := (others => '0');
   --   ! ^ can cause stack overflow on program start if too large

   type cartesian_coord is (Axis_X, Axis_Y, Axis_Z);  --  ! use prefix?

   --axis : cartesian_coord := cartesian_coord'val (1);

   type vec_3_type is array (cartesian_coord) of ieee_float_32
     with pack => true;

   subtype Point3_type is vec_3_type;


   type Unsigned_32_Array is array (Positive range <>) of unsigned_32;


   type byte_array_type is array (unsigned_32 range <>) of unsigned_8
     with Pack => True;


--  !!! ---------------------------------------------------------

--  REMEMBER:
--  everything has only been tested with grid autosport so far

-----------------------------------------------------------------


   --  ! at least grid 2, autosport and possibly dirt rally (ds not checked yet)
   type vis_header_type is record
      vis_file_version : unsigned_32;  -- 0x0, '4' at least for grid autosport
      view_cell_count : unsigned_32;  --  0x4, sect_4
      leaf_view_cell_count : unsigned_32;  --  0x8, sect_2? incorrect?
      --  !!!! likely will need name change too in future
      --  ! old: view_cell_sample_point_count
      --  ! official name: numLeafViewCells

      --  ! appears to never go above 599? many medium or larger track routes
      --    all have 599 enrties, but other tracks can have smaller value
      --    (only tested autosport so far)
      static_object_count : unsigned_32;  --  0xC

      view_cell_pvs_byte_list_length : unsigned_32;  -- 0x10
      --  !!! 'entry_header' instead? still not yet completely determined
      --  !!! 'cell' entry? appears to be two headers read to find visible items
      --      for corresponding view cell

      view_cell_section_offset : unsigned_32;  --  0x14, sect_1, header length,
      pvs_data_list_offset : unsigned_32;  --  0x18, 7, sect_2
      static_objects_offset : unsigned_32;  --  0x1c, sect_3

      --  ! different routes of same track usually have same or similar bounds
      --    (route_0 and route_1 of washington omly differ in max bound on y axis)
      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      --bounds_min_x : ieee_float_32; --  0x20
      --bounds_min_y : ieee_float_32; --  0x24
      --bounds_min_z : ieee_float_32; --  0x28
      view_cell_bounds_min : vec_3_type;

      view_cell_debug_view_offset : unsigned_32;  --  0x2c, sect_4

      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      --bounds_max_x : ieee_float_32;  --  0x30
      --bounds_max_y : ieee_float_32;  --  0x34
      --bounds_max_z : ieee_float_32;  --  0x38
      view_cell_bounds_max : vec_3_type;

      unused_occluders_debug_view_offset : unsigned_32;  -- 0x3c, ! at least unused in every grif autosport vis file seen so far

      object_count_per_static_layer :  unsigned_32_array (1 .. 16); --  0x40
   end record
     with pack => true;


   --  ! use hexadecimal offsets in variable names?


   type unsigned_16_array is array (Positive range <>) of unsigned_16
     with pack => true;



   type debug_view_cell_info_type is record  --  sect_4 meta data

   --  !!! meta data is lower 'resolution', larger grouping of view cells?

   --  !!! all these assumptions, including those for entry data, could be
   --      incorrect if accidentally reading data that isnt used or is meant
   --      for something else even if in same section?

   --  !!! possibley view cell max height boundary?
   --      set 1 min height, set 2 max height?
   --      ! but entry data varies in height too and has multiple levels?
   --
   --      - meta data float values sort of have center point on sides of cell?
   --      - entries have center point in center of cell
   --
   --
   --      doesnt make full sense yet since entries also
   --      have a height?

   --  (original comment)
   --  ! 'meta data' for first entry in section 4 appears to be same values from file
   --    header 0x20 through 0x2c and 0x30 through 0x3c
      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      min : vec_3_type;
      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      max : vec_3_type;
      --  !!! min and max of?

      sample_count : unsigned_32;  --  point_count (old: vector count? matrix length?)
      id : unsigned_32;  --  enrty_index
   end record
     with pack => true;


   type debug_view_cell_pvs_sample_type is record  --  sect_4 entry
      position : vec_3_type;

      --  ! appears to be twoo 16 bit integers, always appear to have same
      --    value, and always appear to be same in every entry, only differing per file.
      --
      ---   may be related to other section while also not being used?
      visible_node_count   : unsigned_16;
      visible_object_count : unsigned_16;
   end record
     with pack => true;



   track_vis_file_name_arg : constant := 1;
   csv_file_name_prefix_arg : constant := 2;

   type output_kind_type is
     (--all_section_data,
      --section_1,
      --section_2,
      section_3_entry_meta_data, section_3_entries,
      section_4_entry_meta_data, section_4_entries);

   enabled_outputs : array (output_kind_type) of boolean :=
     (section_3_entry_meta_data => false,
      section_3_entries         => true,

      section_4_entry_meta_data => false,
       section_4_entries        => false);
   --  ! enabled_outputs_type?

   vis_file   : SIO.File_Type;
   vis_size   : SIO.Count;
   vis_stream : SIO.stream_access;

   vis_out_file : SIO.file_type;
   vis_out_stream : SIO.stream_access;


   vis_header : vis_header_type;


   csv_file : File_type;

   obj_file : File_type;
   vertex_count : Natural := 0;
   face_index : Positive := 1;



   --  ! sect_3, 'ObjectNode'
   --  ! (original field names with underscores)
   type object_node_type is record
      bounds_min : vec_3_type;  --  0x0, 'min', describing something other than bounds?

      --  important ###########################
      --  !!! links object node with view cell data?
      --  !  data used for field of visibleSet?
      pvs_byte_offset : unsigned_16;  --  0xC
      pvs_bit_offset  : unsigned_16;  --  0xE

      bounds_max : vec_3_type;  -- 0x10, 'max', describing something other than bounds?

      index : unsigned_16;  -- 0x1C, entry_index
      --  !!! value is shifted left 4 bits to calculate index for array of ptrs
      --      to sect_3 entries and array of 0s instance var in visibilitySystem

      static_item_count : unsigned_16;  --  0x1E, 'numStatucObjects', point_pair_count
      --  1-based

      next_offset : unsigned_32;  --  0x20, 'nextOffset', next_entry_offset
      --  final ObjectNode entry as next offset of 0

      --  !!!! may also be some sort of index for other area or data?
      --  ! grid cell id, terrain chunk, ornament id?
      next_size : unsigned_16;  --  0x24, 'nextSize', next_enrty_size
      depth : unsigned_16; --  0x26, related to layer?

      --  !!!  literal padding for meta data or indication or amount of padding for point pairs?
      --  ! only ever seen value of 0 in index 1.
      --  ! seen valie of 2 or 0 in index 2, not yet seen reason for specific value
      pad : unsigned_32_array (1 .. 2); --  0x28
   end record  --  0x30 (size)
     with pack => True;

   --  StaticItem
   type static_item_type is record
      bounds_min : vec_3_type;  --  0x0 to 0xC, 'boundsMin', point_1

      --   !!! static_layer, layer bitmask?
      --  ! related to bit mask operation with value from QueryParams, treated
      --    as single 32 bit int in addAllItemsToVisibleSet()
      layer_index : unsigned_32;  --  0xC, 'layer'
                                --  !!! ensure is not bit string (data being masked)
                                      --  !!! also used (after additional math) as index for retrieving value from specific area in VisibleSet
      bounds_max : vec_3_type;  --  0x10 to 0x1C, 'boundsMax', point_2
      id : unsigned_32;  --  0x1C
   end record
     with pack => True;


   --  sect 3
   procedure rw_object_nodes is
      object_node : object_node_type;
      static_item : static_item_type;

      bottom_right : vec_3_type;
      top_left : vec_3_type;
   begin
      for Obj_Index in 1 .. vis_header.static_object_count loop

         object_node_type'read (vis_stream, object_node);

--          bottom_right :=
--            (Axis_X => object_node.bounds_max (Axis_X),
--             Axis_Y => object_node.bounds_min (Axis_y),
--             Axis_z => );

         object_node.bounds_min := vis_header.view_cell_bounds_min;
         object_node.bounds_max := vis_header.view_cell_bounds_max;
         object_node_type'write (vis_out_stream, object_node);

         for Item_Index in 1 .. object_node.static_item_count loop
            static_item_type'read (vis_stream, static_item);
            static_item.bounds_min := vis_header.view_cell_bounds_min;
            static_item.bounds_max := vis_header.view_cell_bounds_max;
           --static_item.bounds_min := (-10.0, -10.0, -10.0);
           --static_item.bounds_max := (10.0, 10.0, 10.0);
            static_item_type'write (vis_out_stream, static_item);
         end loop;

      end loop;
   end rw_object_nodes;


   procedure rw_debug_view_cell_info is
      debug_vc_info : debug_view_cell_info_type;
      debug_vc_pvs_sample : debug_view_cell_pvs_sample_type;
   begin
      for info_index in 1 .. vis_header.view_cell_count loop

         debug_view_cell_info_type'read (vis_stream, debug_vc_info);
         debug_view_cell_info_type'write (vis_out_stream, debug_vc_info);

         for sample_index in 1 .. debug_vc_info.sample_count loop
            debug_view_cell_pvs_sample_type'read (vis_stream, debug_vc_pvs_sample);
            debug_view_cell_pvs_sample_type'write (vis_out_stream, debug_vc_pvs_sample);
         end loop;

      end loop;
   end rw_debug_view_cell_info;


--  !!! FIX: empty groups/objs somehow occurring when sect_3 entry is empty

--    procedure sect_3_obj_import is
--    
--       --   !!! read from file and update?
--       new_entry : static_item__type;
--    
--       point_pair : array (positive range 1 .. 6) of ieee_float_32;
-- 
--       procedure parse_v_pair (v_pair : in string) is
--         si : positive := 3;  --  start at first float (x)
--         axis : positive := 1;
--       begin
--          for ei in v_pair'range loop
--             if v_pair (ei) = ' ' then
--                point_pair (axis) := ieee_float_32'value (v_pair (si .. ei - 1));
--                exit when axis = 6;
--                si := ei + 1;
--                axis := axis + 1;
--             end if;
--          end loop;
--       end parse_v_pair;
-- 
--    begin
--       loop
--          declare
--             --  !!! only safe if lines in file is even, need to
--             --      safely fail if not
--             line_1 : constant string := get_line (csv_file);
--             line_2 : constant string := get_line (csv_file);
--             --   !!! either move line_2 to other location or look ahead single byte?
--          begin
--             case line_1 (1) is
--                when 'v' =>
--                   parse_v_pair (line_1 & line_2 (3 .. line_2'last));
--                   --  point 1
--                   new_entry.x1 := point_pair (1);
--                   new_entry.y1 := point_pair (2);
--                   new_entry.z1 := point_pair (3);
--                   --  point 2
--                   new_entry.x2 := point_pair (4);
--                   new_entry.y2 := point_pair (5);
--                   new_entry.z2 := point_pair (6);
--                when 'g' =>
--                  --  ! go to next entry
--                  null;
--                when others => null;
--             end case;
--             null;
--          end;
-- 
--          exit when end_of_file (csv_file);
--       end loop;
--    end sect_3_obj_import;

   --  ! rename 'area' 'sub_section'?
--    procedure sect_3_read (sect_area : output_kind_type) is
--       meta_data : sect_3_entry_meta_data_type;
--       entry_pair : sect_3_entry_type;
-- 
--       entry_index : Natural := 0;  --  !!! remove, rename? use possible index from file instead?
--    begin
--       loop
--          sect_3_entry_meta_data_type'read (vis_stream, meta_data);
-- 
--          put_line ("program sect_3 entry index" & entry_index'image);
--          put_line ("index from inside file" & meta_data.entry_index'image);
--          put_line ("entry has" & meta_data.point_pair_count'image & " point pairs");
--          put_line
--            ("meta data unknown value 1:" & meta_data.unknown_value_1'image & NL
--              & "meta data unknown value 2:" & meta_data.unknown_value_2'image);
--          put_line ("________________________________");
-- 
--          if sect_area = section_3_entry_meta_data then
-- --             put_line
-- --               ("X:" & meta_data.unknown_float_x1'image & ", " &
-- --                "Y:" & meta_data.unknown_float_y1'image & ", " &
-- --                "Z:" & meta_data.unknown_float_z1'image & NL   &
-- -- 
-- --                "  " & meta_data.unknown_float_x2'image & ", " &
-- --                "  " & meta_data.unknown_float_y2'image & ", " &
-- --                "  " & meta_data.unknown_float_z2'image & NL);
-- 
--             put (csv_file,
--               meta_data.unknown_float_x1'image & ',' &
--               meta_data.unknown_float_y1'image & ',' &
--               meta_data.unknown_float_z1'image & ';' &
-- 
--               meta_data.unknown_float_x2'image & ',' &
--               meta_data.unknown_float_y2'image & ',' &
--               meta_data.unknown_float_z2'image & ';');
--          end if;
-- 
--          --put_line ("point" & entry_index'image & ':');
-- 
--          Create
--            (file => csv_file,
--             mode => out_file,
--             name => cli.argument (csv_file_name_prefix_arg)
--               & "_SECTION_3_ENTRIES_"
--               & ada.strings.fixed.trim (entry_index'image, ada.strings.left)
--               & ".obj");
-- 
-- --          put_line (csv_file, "g Object_"
-- --            & ada.strings.fixed.trim (entry_index'image, ada.strings.left) & NL
-- --            & "s 0");
-- 
--          for pair_index in 1 .. meta_data.point_pair_count loop
-- 
--             sect_3_entry_type'read (vis_stream, entry_pair);
-- 
--             if sect_area = section_3_entries then
--                put_line
--                  ("X:" & entry_pair.x1'image & ", " &
--                   "Y:" & entry_pair.y1'image & ", " &
--                   "Z:" & entry_pair.z1'image & NL   &
-- 
--                   "  " & entry_pair.x2'image & ", " &
--                   "  " & entry_pair.y2'image & ", " &
--                   "  " & entry_pair.z2'image & NL);
-- 
--                put_line (csv_file, "v "    &
--                  entry_pair.x1'image & " " &
--                  entry_pair.y1'image & " " &
--                  entry_pair.z1'image &
-- 
--                  NL &
-- 
--                  "v "                      &
--                  entry_pair.x2'image & " " &
--                  entry_pair.y2'image & " " &
--                  entry_pair.z1'image);
-- 
--                vertex_count := vertex_count + 2;
-- 
--             end if;
--          end loop;
-- 
--          close (csv_file);
-- 
--          --  ! (for previous case statement) below does not work:
--          --      - can use if statementes
--          --      - could separate reading of areas by navigating using
--          --        offsets instead of reading all data to move file index
-- 
--          --  ! possible to file write generic by changing which which is written
--          --    to (stdout or csv) at cost of formatting stdout
-- 
--          exit when meta_data.next_entry_offset = 0;
-- 
--          if meta_data.point_pair_count = 0 then
--             goto continue;
--          end if;
-- 
-- 
--          --put_line ("Vertex count:" & vertex_count'image);
--          --put_line ("face index:" & face_index'image);
-- 
-- --          put (csv_file, "f");
-- --          loop
-- --             put (csv_file, face_index'image);
-- --             exit when face_index = vertex_count;
-- --             put_line ("face index:" & face_index'image);
-- --             face_index := face_index + 1;
-- --          end loop;
-- -- 
-- --          new_line (csv_file);
-- --          face_index := face_index + 1;
--            --   !!! 
-- 
--          <<continue>>
-- 
--          entry_index := entry_index + 1;
-- 
--       end loop;
-- 
-- 
--    end sect_3_read;

--    procedure sect_3_traversal is
--    begin
--       if vis_header.sect_3_offset = 0 then
--          return;
--       end if;
-- 
--       sio.set_index (sio.positive_count (vis_header.sect_3_offset + 1));
--       --  ! restore index upon call after?
-- 
--       sect_3_ptr := base_ptr + sect_3_offset;
-- 
--       esi := 0;
-- 
--       loop
--          if sect_3_ptr [32] /= 0 then  -- ! offset to next entry, 0 when last entry is reached
--             edx := base_ptr + sect_3_ptr [32];
--             esi := sect_3_ptr - edx;
--             --  ! calculates offset to next entry in sect_3 (ends up performing
--             --    offset to current position in file minus offset to next entry?)
-- 
--             ecx := edx;
--          end if;
-- 
--          sect_3_ptr [32] := esi;  --  ! replaces file oriented offset to
--            -- next entry in sect_3 (global offset) with in-memory oriented one
--            -- (offset relative to current position)?
-- 
--          rdx := ui16_read (sect_3_ptr [28])
--          rdx := shift_left (rdx, 4)
--          --  ! shift original index for entry by 4, results in count by 16
--          --    (1 -> 16, 2 -> 32, 3 -> 48) used as index for both arrays
--          --    in visibility system object.
-- 
--          --  ! structure or length determined in advance, or vis file read
--          --    by other unknown function in advance to allocate length?
-- 
--          visibility_system.unknown_s3_array_0x40 [rdx] := 0;
--          visibility_system.unknown_s3_array_0x48 [rdx] := sect_3_ptr;
--          --  ! offset to start of meta data for entry (no + 32 offset)
-- 
--          sect_3_ptr := ecx
--          exit when sect_3_ptr = 0;
-- 
--       end loop;
-- 
--       --  !!! look over disassembly after second loop again
-- 
--    end sect_3_traversal;

-- 
--    procedure sect_4_read (sect_area : output_kind_type) is
-- 
--       s4_entry_meta_data : sect_4_entry_meta_data_type;
--       s4_entry : sect_4_entry_type;
-- 
--    begin
-- 
--       loop
--          exit when sio.end_of_file (vis_file);
-- 
--          sect_4_entry_meta_data_type'read (vis_stream, s4_entry_meta_data);
-- 
--          put_line ("entry index:" & s4_entry_meta_data.entry_index'image);
--          put_line ("entry point count:" & s4_entry_meta_data.point_count'image);
-- 
--          exit when sio.end_of_file (vis_file);
--          --  ! when last entry has no contents, warn when occurs?
-- 
--          if sect_area = section_4_entry_meta_data then
--            put_line
--              ("X:" & s4_entry_meta_data.unknown_float_x1'image & ',' &
--               "Y:" & s4_entry_meta_data.unknown_float_y1'image & ',' &
--               "Z:" & s4_entry_meta_data.unknown_float_z1'image & NL  &
-- 
--               "  " & s4_entry_meta_data.unknown_float_x2'image & ',' &
--               "  " & s4_entry_meta_data.unknown_float_y2'image & ',' &
--               "  " & s4_entry_meta_data.unknown_float_z2'image & NL);
-- 
--            put (csv_file,
--              s4_entry_meta_data.unknown_float_x1'image & ',' &
--              s4_entry_meta_data.unknown_float_y1'image & ',' &
--              s4_entry_meta_data.unknown_float_z1'image & ';' &
-- 
--              s4_entry_meta_data.unknown_float_x2'image & ',' &
--              s4_entry_meta_data.unknown_float_y2'image & ',' &
--              s4_entry_meta_data.unknown_float_z2'image & ';');
--          end if;
-- 
--          if s4_entry_meta_data.point_count = 0 then
--             put_line ("entry has no points");
--          else
--             for entry_index in 1 .. s4_entry_meta_data.point_count loop
--                sect_4_entry_type'read (vis_stream, s4_entry);
-- 
--                if sect_area = section_4_entries then
--                   put_line ("point" & entry_index'image & ':');
--                   put_line ("X:" & s4_entry.x'image & NL
--                     & "Y:"  & s4_entry.y'image & NL
--                     & "Z:"  & s4_entry.z'image & NL
--                     & "unknown ui16 1:" & s4_entry.unknown_1'image & NL
--                     & "unknown ui16 2:" & s4_entry.unknown_2'image & NL);
-- 
--                   put (csv_file,
--                     s4_entry.x'image & ',' &
--                     s4_entry.y'image & ',' &
--                     s4_entry.z'image & ';');
--                end if;
--             end loop;
--          end if;
-- 
--       end loop;
-- 
--    end sect_4_read;
-- 


   type vc_kind is (vc_node, vc_leaf, vc_debug);

--  00001010 (top bits, left shifted by 16)
--  1011000001000101 (bottom bits, top 'or'ed with value)

   type view_cell_type (variant : vc_kind) is record
      case variant is

         --  ! BVH tree?
         when vc_node =>
            front_Index : natural range 0 .. 8191;           --  13 bits
            plane_Axis : natural range 0 .. 3;               --  2 bits
            back_Index_Top_Bit : natural range 0 .. 1;       --  1 bit
            back_Index_Lower_Bits : natural range 0 .. 4095; --  12 bits
            plane_Distance_Top_Bits: natural range 0 .. 15;  --  4 bits
            plane_Distance_Bottom_Bits : unsigned_16;        --  16 bits

         when vc_leaf =>
            is_non_leaf           : unsigned_16;
            pvs_offset_lower_bits : unsigned_16;
            pvs_offset_top_bits   : unsigned_8;
            compression_scheme    : unsigned_8;

         when vc_debug =>
            vals : unsigned_16_array (1 .. 3);

      end case;
   end record with
     Pack => True,
     Unchecked_Union => True;

   type view_cell_node_type is record
      front_Index : natural range 0 .. 8191;           --  13 bits
      plane_Axis : natural range 0 .. 3;               --  2 bits

      --  ! 'index' indication of value used to locate data
      --    in other area of file or section? (findViewCell())
      back_Index_Top_Bit : natural range 0 .. 1;       --  1 bit
      back_Index_Lower_Bits : natural range 0 .. 4095; --  12 bits

      plane_Distance_Top_Bits: natural range 0 .. 15;  --  4 bits
      plane_Distance_Bottom_Bits : unsigned_16;        --  16 bits
   end record
     with Pack => True;

   type view_cell_leaf_type is record
      is_non_leaf           : unsigned_16;
      pvs_offset_lower_bits : unsigned_16;
      pvs_offset_top_bits   : unsigned_8;
      compression_scheme    : unsigned_8;
   end record
     with Pack => True;

   type view_cell_debug_type is record
      vals : unsigned_16_array (1 .. 3);
   end record
     with Pack => True;

--  ! before uncheck_union method:

--    type view_cell_node_type is record
--       front_Index : natural range 0 .. 8191;           --  13 bits
--       plane_Axis : natural range 0 .. 3;               --  2 bits
--       back_Index_Top_Bit : natural range 0 .. 1;       --  1 bit
--       back_Index_Lower_Bits : natural range 0 .. 4095; --  12 bits
--       plane_Distance_Top_Bits: natural range 0 .. 15;  --  4 bits
--       plane_Distance_Bottom_Bits : unsigned_16;        --  16 bits
--    end record                                          --  = 48 bits, 6 bytes
--      with pack => true;
-- 
-- 
--    type view_cell_leaf_type is record
--       is_non_leaf           : unsigned_16;
--       pvs_offset_lower_bits : unsigned_16;
--       pvs_offset_top_bits   : unsigned_8;
--       compression_scheme    : unsigned_8;
--    end record
--      with pack => true;
-- 
--    type view_cell_debug_type is record
--       vals : unsigned_16_array (1 .. 3);
--    end record
--      with pack => true;
-- 
-- 
--    subtype view_cell_type is view_cell_debug_type;
-- 

   --  ! likely move below vars to local declaration region of function that
   --    will read view cell data section

--    vc_union : view_cell_type;
-- 
--    vc_node : view_cell_node_type;
--    for vc_node'address use vc_union'address;
-- 
--    vc_leaf : view_cell_leaf_type;
--    for vc_leaf'address use vc_union'address;
-- 
--    vc_debug : view_cell_debug_type;
--    for vc_debug'address use vc_union'address;
-- 
-- 
--    vc_union_2 : view_cell_type;
-- 
--    vc_node_2 : view_cell_node_type;
--    for vc_node_2'address use vc_union_2'address;
-- 
--    vc_leaf_2 : view_cell_leaf_type;
--    for vc_leaf_2'address use vc_union_2'address;
-- 



   procedure rw_view_cells is
      vc_leaf : view_cell_leaf_type;
   begin
      for vc_index in 1 .. vis_header.view_cell_count loop
         view_cell_leaf_type'read (vis_stream, vc_leaf);
         view_cell_leaf_type'write (vis_out_stream, vc_leaf);
      end loop;
      --  read and write terminating(?) two null bytes
      unsigned_16'read (vis_stream, vc_leaf.is_non_leaf);
      unsigned_16'write (vis_out_stream, vc_leaf.is_non_leaf);
   end rw_view_cells;



   --  !!! better way to handle?
   procedure rw_c_pvs_data is
      data : unsigned_8;
   begin
      loop
         unsigned_8'read (vis_stream, data);
         unsigned_8'write (vis_out_stream, data);
         exit when unsigned_32 (sio.index (vis_file)) - 1 =
           vis_header.static_objects_offset;
      end loop;
   end rw_c_pvs_data;


   --procedure 





--  decode RLE 8 bit
procedure test (offset : in unsigned_32; uc_data : in out byte_array_type) is

   subtype u32 is unsigned_32;
   subtype i32 is integer_32;

   --  ! currently not used, just for following along, cross referencing with
   --    assembly, equivalent is internal index managed by file stream
   --  !  incorrect name? %r10 appears to be only be incremented when
   --     a run is compressed (incremented by 2, length and value byte) 
   data_index : unsigned_32 := 0;  --  !  %r10

   uc_data_index : unsigned_32 := 0;  --  !  %rbx, %rdi (VisibleSet ucPvsData ptr?)

   active_length : integer_8; --  !  %cl?
   active_data   : unsigned_8; --  !  %al?

   c_ratio : ieee_float_32;

   file_pos : constant sio.positive_count := sio.index (vis_file);

begin
   --  ! save original position and restore at end?
   sio.set_index (vis_file, sio.positive_count (offset + 1));
   integer_8'read (vis_stream, active_length);
   integer_8'write (vis_out_stream, active_length);

   --  !   not finished
   if active_length = 0 then
--       return;
      put_line ("first byte 0, skipping loop");
      goto skip_loop;
   end if;

   --  !   %r8 offset to start of actual data? (pos of length + 1?)

   loop

      put_line ("active_length:" & active_length'image);

      --  !  compressed data?
      --  !  original: if signed, negative, 100b7e860
      if active_length < 0 then

         put_line ("compressed?");

         --  !  data_length starts at 0 if this path taken?

         --  !!!!  create copy of active_length for %r14 appearance?
         --  !  i.e. does addition with existing var affect later code?
         --  !  dont use separate var and just perform addition?
         --active_length := active_length + 128;  --  !!! 0x80

         put_line ("active_length + 128:" & i32'image (i32 (active_length) + 128));

         --  !  opposite (no jump) path of je at 100b7e867
         if i32 (active_length) + 128 > 0 then


            --  !!!  unsigned, passed to calcVisible set as
            --       'unsigned char const*' (old: signed?)
            unsigned_8'read (vis_stream, active_data);
            unsigned_8'write (vis_out_stream, active_data);

            put_line ("inserting" & active_data'image & i32'image (i32 (active_length) + 128) & " times");

            for I in 1 .. i32 (active_length) + 128 loop --  !   100b7e880
               put_line (I'image & " -" & active_data'image);
               uc_data (uc_data_index) := active_data;
               uc_data_index := uc_data_index + 1;
               --  ! same behavior as below

               --  !!! previous bug: was using uc_data_index to exit loop
               --      once data for current run was copied, missed
               --      that uc_data_index wil have same value next time loop
               --      is entered and will exit after one iteration once
               --      value is > active_length + 128
               --exit when uc_data_index > (i32 (active_length) + 128);  --  ! + 128
            end loop;
            put_line ("--------------");
         end if;

         --  !  at end of above two paths, but outside of below 'else' path
         --  !  move data_index past length byte and compressed value byte that
         --     was just read, copied from above
         --  !  100b7e896
         data_index := data_index + 2;

      --  ! non-compressed data?
      --  ! opposite (no jump) path of js at 100b7e816
      else

         put_line ("non compressed?");

         data_index := data_index + 1;  --  ! 100b7e818

         --  100b7e81d
         if active_length > 0 then
            for I in 1 .. active_length loop
               --  !!!  unsigned, passed to calcVisible set as 'unsigned char const*' (old: signed?)
               unsigned_8'read (vis_stream, uc_data (uc_data_index));
               unsigned_8'write (vis_out_stream, uc_data (uc_data_index));
               put_line ("inserting value:" & uc_data (uc_data_index)'image);
               uc_data_index := uc_data_index + 1;
               --  ! allow + 1 over current length so index is positioned
               --   at next free index for future data? 100b7e848

               --  !!! same issue as above
               --exit when uc_data_index > u32 (active_length);

            end loop;
            --  ! move extra addition to outside, after loop?
         end if;

         data_index := data_index + u32 (active_length); --  ! 100b7e84d

      end if;

      new_line;

      --  !!!  can combine with first read outside of loop?
      --       first separate read for skipping loop, but could
      --       still do that if 'exit' statement moved to start of
      --       loop with read?
      integer_8'read (vis_stream, active_length);
      integer_8'write (vis_out_stream, active_length);

      exit when active_length = 0;

   end loop;

   <<Skip_Loop>>

   --  100b7e8aa
   if data_index > 0 then
      c_ratio := ieee_float_32 (data_index);
   else
      --data_index := shift
      null;
   end if;

   put_line ("data_index:" & data_index'image);

   c_ratio := ieee_float_32 (uc_data_index) / ieee_float_32 (data_index);
   put_line ("c_ratio:" & c_ratio'image);

   sio.set_index (vis_file, file_pos);

end test;


procedure Find_View_Cell is

   subtype u32 is unsigned_32;

   wash_r0_first_32 : constant := 2684420098;
   wash_r0_last_16 : constant := 5623;

   player_pos : constant Point3_type :=
     (Axis_X => 500.0,
      Axis_Y => 10.0,
      Axis_Z => 500.0);

   bounds_min : constant Point3_type := Vis_header.view_cell_bounds_min;
   bounds_max : constant Point3_type := Vis_header.view_cell_bounds_max;

   --tbd_arg_2 : view_cell_type;

   --  Despite no seemingly related structures containing a 32 bit type, code
   --  for function uses first 32 bits of each 6 byte section together

--  ! Causes compiler bug, always occurs when address aspect target
--    is set to address of entity that isnt declared yet?
--  ! address attribute causes normal compiler error
--   first_32: unsigned_32 with Address => vc'Address;

   result : unsigned_32; --  ?
   tbd_float : ieee_float_32;
   tbd_bound_direction : ieee_float_32;
   tbd_rax_after_bw_and_3 : unsigned_32;

   transformed_player_pos : Point3_type :=
     (Axis_X => 0.0,
      Axis_Y => 0.0,
      Axis_Z => 0.0);

--    vc_buffer : unsigned_16_array (1 .. 3);

   --  ! should always start as node?
--    vc : view_cell_type (vc_node) with Address => vc_buffer'address;


   --  ! originally before `vc` declaration above causing compiler bug?
   --first_32: unsigned_32 with Address => vc'Address;

   vc_leaf  : view_cell_leaf_Type;
   vc_node  : view_cell_node_Type with address => vc_leaf'address;
   vc_debug : view_cell_debug_Type with address => vc_leaf'address;
   first_32 : unsigned_32 with Address => vc_node'Address;

   branch_node_count : Natural := 0;
   total_node_count : natural := 0;
   pvs_offset : unsigned_32;

   --  ! 0-based like game for now
   uc_data : byte_array_type
     (0 .. vis_header.view_cell_pvs_byte_list_length - 1) := (others => 0);

--    procedure test_uu (vc : in view_cell_type) is
--    begin
-- 
--       loop
--          unsigned_16_array'read (vis_stream, vc_buffer);
-- 
--          put_line ("idx 1:" & vc_buffer (1)'image);
--          put_line ("idx 2:" & vc_buffer (2)'image);
--          put_line ("idx 3:" & vc_buffer (3)'image);
-- 
--          put_line ("id_non_lead (should be same as idx 1):" & vc.is_non_leaf'image);
-- 
--          if vc.is_non_leaf = 0 then
--             put_line ("reached leaf node");
--             put_line (branch_node_count'image & " nodes before leaf");
--             put_line ("PVS (sect_2) offset:");
-- 
--             put_line (unsigned_32'image
--               (shift_left (value  => unsigned_32 (vc.pvs_offset_top_bits),
--                            amount => 16)
--                              or unsigned_32 (vc.pvs_offset_lower_bits)));
-- 
--             branch_node_count := 0;
--             total_node_count := total_node_count + 1;
--          else
--             branch_node_count := branch_node_count + 1;
--             total_node_count := total_node_count + 1;
--             put_Line ("Node" & branch_node_count'image);
--          end if;
-- 
--          exit when total_node_count = Natural (vis_header.view_cell_count);
-- 
--       end loop;
-- 
--    end test_uu;


begin

--  old:
--    loop
--          view_cell_type'read (vis_stream, vc_union);
--    end loop;
-- 
--    loop
--       unsigned_16_array'read (vis_stream, vc_buffer);
--       if vc.is_non_leaf = 0 then
--          put_line ("reached leaf node");
--          put_line (branch_node_count'image & " nodes before leaf");
--          put_line ("PVS (sect_2) offset:");
-- 
--          put_line (unsigned_32'image
--            (shift_left (value  => unsigned_32 (vc.pvs_offset_top_bits),
--                         amount => 16)
--                           or unsigned_32 (vc.pvs_offset_lower_bits)));
-- 
--          branch_node_count := 0;
--          total_node_count := total_node_count + 1;
--       else
--          branch_node_count := branch_node_count + 1;
--          total_node_count := total_node_count + 1;
--          put_Line ("Node" & branch_node_count'image);
--       end if;
-- 
--       exit when total_node_count = Natural (vis_header.view_cell_count);
-- 
--    end loop;

      loop
         view_cell_leaf_type'read (vis_stream, vc_leaf);
         view_cell_leaf_type'write (vis_out_stream, vc_leaf);

         put_line ("is_non_leaf:" & vc_leaf.is_non_leaf'image);

         if vc_leaf.is_non_leaf = 0 then
            put_line ("reached leaf node");
            put_line (branch_node_count'image & " nodes before leaf");

            put_line ("pvs offset top bits:" & vc_leaf.pvs_offset_top_bits'image);
            put_line ("pvs offset lower bits:" & vc_leaf.pvs_offset_lower_bits'image);
            put_line ("pvs compression scheme:" & vc_leaf.compression_Scheme'image);

            --  have to cast top bits before shift as resulting value can
            --  be larger than 8 bit integer (and shift_left for unsigned_8
            --  will return wrong (wrap around?) result)
            pvs_offset := shift_left
              (Value  => unsigned_32 (vc_leaf.pvs_offset_top_bits),
               amount => 16)
                or
                  unsigned_32 (vc_leaf.pvs_offset_lower_bits);

            --  ! reverse of above: xor result with with lower_bits,
            --    shift right by value of top_bits

            put_line ("PVS (sect_2) offset for branch?:" & pvs_offset'image);

            --  single byte scheme?
            if vc_leaf.compression_scheme = 1 then
               put_line ("about to read pvs data");
               uc_data := (others => 0);
               test (pvs_offset, uc_data);
               put_line ("pvs data:");
               for I in uc_data'range loop
                  put_line (I'image & " -" & uc_data (I)'image);
               end loop;
               --return;
            end if;

            branch_node_count := 0;
            total_node_count := total_node_count + 1;
         else
            branch_node_count := branch_node_count + 1;
            total_node_count := total_node_count + 1;
            put_Line ("Node" & branch_node_count'image);
         end if;

         exit when total_node_count = Natural (vis_header.view_cell_count);

      end loop;


   --test_uu (vc);

   return;

   --  !!! Highly confusing if original name, considering renaming?
   --  Stop recursion when first leaf node is reached?
--    if vc.is_non_leaf = 0 then
--       put_line ("[NOTICE] reached leaf node");
--       return;
--    end if;

   --  !!! hardcoded to washington r0 while testing
--    pragma Assert (first_32 = wash_r0_first_32,
--      "[ERROR] first 32 bits of view cell"
--        & " section were unexpected value of"
--        & first_32'image & NL
--        & "Expected:"
--        & wash_r0_first_32'image);
-- 
--    pragma Assert (vc.plane_distance_bottom_bits = wash_r0_last_16,
--      "[ERROR] last 16 bits of view cell"
--        & " section were unexpected value of"
--        & vc.plane_distance_bottom_bits'image & NL
--        & "Expected:"
--        & wash_r0_last_16'image);

   --  TODO: combine into single expression?
   --  !!! Correlation between amount shifted and bit field sizes from struct?
--    result := shift_left (u32 (vc.plane_Distance_Bottom_Bits), 16);
--    result := first_32 or result;
--    result := shift_right (result, 13);
-- 
--    put_line ("Value of 'result' before bitwise 'and 3':"
--      & result'image);
-- 
--    result := result and 3;
--    tbd_rax_after_bw_and_3 := result;
-- 
--    put_line ("Value of 'result' before use for view cell bounds offset:"
--      & result'image);
-- 
   --  TODO: read of view cell bounds from vis header using 'result' here,
   --  not yet sure of relevance or meaning  of 'result' in effective address
   --  calculation

   --  Max bounds and min bounds seem to be able to be ordered one after
   --  another even though below statements occur first in assembly.
   --  If original order followed, would have to use different var or
   --  combine expressions?

   --  TODO: Combine into single expression with below statement?
--    result := shift_right (first_32, 12); --  0xC
--    result := result and 16#F0000#; --  983040

   --  Matches value from memory during runtime
   --  ! possible offset to sect 2 (after further modification)?
--    tbd_float := ieee_float_32
--      (result or u32 (vc.plane_distance_bottom_bits));
-- 
--    put_line ("'result' int to float:" & tbd_float'image & NL);
-- 
--    put_line ("View cell bounds max X:" & bounds_max (AXis_x)'image);
--    put_line ("View cell bounds min X:" & bounds_min (AXis_x)'image);

   --  !!! TODO: %rax used as offset to select bound axis?
   --  ! should be same operation that original assembly performs, but
   --    bounds_min is almost always(?) negative so below actually results
   --    in addition. keep in mind incase issues later on
   --  Matches value from memory during runtime
--    tbd_bound_direction := bounds_max (Axis_X) - bounds_min (Axis_x);
--    put_line ("bounds max X - bounds min X:" & tbd_bound_direction'image);
-- 
--    tbd_bound_direction := tbd_bound_direction * ieee_float_32 (16#38D1B717#);
--    tbd_bound_direction := tbd_bound_direction * tbd_float;
--    tbd_bound_direction := tbd_bound_direction + bounds_min (Axis_X);

   --  ! shift amount same as bits for plane_Distance_Top_Bits
--    tbd_rax_after_bw_and_3 := shift_left (tbd_rax_after_bw_and_3, 4);
-- 
--    put_line ("tbd_rax_after_bw_and_3:" & tbd_rax_after_bw_and_3'image);


   --  ! see if below 'section' of code is nameable after determining more


   --  !!! TODO Does value (0x0000803f) at %rip + offset ever change?
   --  !!! If a constant, must indiciate some important unchanging value? but
   --      seems to just be 1.0? scale (W) axis?
   --
   --  !!! TODO multiplier float is selected from local possible 3 value array or
   --      struct var using %rax above, but not yet sure if %rax will ever be
   --      non-0 during future recursions.
   --
   --  ! must find better, intrinsic way of doing this
--    transformed_player_pos (Axis_X) := player_pos (Axis_X) * ieee_float_32 (16#0000803f#);
--    transformed_player_pos (Axis_Y) := player_pos (Axis_Y) * ieee_float_32 (16#0000803f#);
--    transformed_player_pos (Axis_Z) := player_pos (Axis_Z) * ieee_float_32 (16#0000803f#);
-- 
   return;

   --  starting values from first view cell for washington r0:
   --    - first 4 bytes: 2684420098
   --    - last 2 bytes: 5623
   --  operations:
   --    - 'shlq 0x20, 5623' -> 368508928       OLD: 24150601105408
   --    - 'orq 2684420098, 368508928' -> 
   --    - 'shrq 0xd (13), 24153285525506' -> 2948399112
   --    - 'andq 0x3, 2948399112' -> 0
   --    - (0 in %rax, used as offset to reading min and max view cell bounds
   --       from vis file header)
   --    - (returns to using value of 2684420098 in %esi)
   --    - 'shrl 0xC (12), 2684420098' -> 655376
   --    - 'andl 0xF0000 (983040), 655376' -> 655360
   --    - 'orl 655360, 5623 (saved in r9d)' -> 660983
   --    - 'cvtsi2ss 660983' -> xmm2 = {0x70 0x5f 0x21 0x49 0xff 0xff 0xcf 0x3f 0x53 0xd3 0x1e 0xe2 0xff 0xff 0xcf 0x3f}

   --  PDBB is 16 bits itself but is shifted in larger register, original
   --  assembly uses 64 bit register but 65,535 << 16 will never exceed 32 bits
--    vc_mask := shift_left (unsigned_32 (vc_node.plane_distance_bottom_bits), 16);  --  0x20

--    put_line ("left shift by 16 of PDBB:" & vc_mask'image);

--    vc_mask := shift_right (vc_mask, 13);  --  0xD

--    put_line (vc_mask'image);

--    vc_mask := 3 and vc_mask;

--    put_line (vc_mask'image);
-- 
end Find_View_Cell;


   test_32 : unsigned_32;

   test_int : unsigned_32 := 16#3f800000#;
   --float_view : ieee_float_32 with Address => test_int'address;
   --float_test : ieee_float_32 := 123.123 or 1.0;

   use type Ada.Streams.Stream_Io.Count;

begin
   --put_line ("Size of view cell UU:" & view_cell_type'size'image);
   --put_line ("possibe_grid_bounds_type size:" & possible_grid_bounds_type'size'image);

--    if cli.argument_count /= 2 then
--       put_line ("2 arg");
--       return;
--    end if;

   if not dir.exists (cli.argument (track_vis_file_name_arg)) then
      put_line ("file for first arg doesnt exist");
      return;
   end if;

   sio.open (vis_file, sio.in_file, cli.argument (track_vis_file_name_arg));
   vis_size := SIO.Size (vis_file);
   vis_stream := sio.stream (vis_file);

   if dir.exists ("vis_out.vis") then
      put_line ("'vis_out.vis' already exists, okay to overwrite? y/n");
      if get_line /= "y" then
         return;
      end if;
   end if;

   sio.create (vis_out_file, sio.out_file, "vis_out.vis");
   vis_out_stream := sio.stream (vis_out_file);


   put_line ("file size:" & sio.size (vis_file)'image & ", index:"
     & sio.index (vis_file)'image);

   --  !!! does this just hang forever iflarger than file size or return
   --      immediately with whatever amount of data was available?
   vis_header_type'read (vis_stream, vis_header);

   --   !!! 4 for autosport, grid 2, dirt rally, update after checking others
   if vis_header.vis_file_version /= 4 then
      put_line ("not valid vis file");
      return;
   end if;

   if SIO.Count (vis_header.view_cell_section_offset + 1) > vis_size then
      put_line ("[ERROR] offset to view cell section larger than file");
      return;
   end if;

   vis_header_type'write  (vis_out_stream, vis_header);
   put_line ("read header");

--    unsigned_32'read (vis_stream, test_32);
--    put_line ("current 32 bits after header read:" & test_32'image);
-- 
--    SIO.Set_Index (vis_file, SIO.Positive_Count (Vis_Header.View_Cell_Section_Offset + 1));
-- 
--    unsigned_32'read (vis_stream, test_32);
--    put_line ("current 32 bits after manual index set:" & test_32'image);

   --Find_View_Cell;
   rw_view_cells;
   put_line ("read view cells");

   rw_c_pvs_data;
   put_line ("read c pvs data");

   rw_object_nodes;
   put_line ("read object nodes and static items");

   rw_debug_view_cell_info;
   put_line ("read debug view cell info and samplees");

   --   !!! this doesnt work anymore (since multiple output)

--    if dir.exists (cli.argument (csv_file_name_prefix_arg)) then
--       put_line ("File with name '" & cli.argument (csv_file_name_prefix_arg)
--         & "' already exists, overwrite?");
--       put ("enter 'Y' and press enter to continue >");
--       if get_line /= "Y" then
--          return;
--       end if;
--    end if;

   --  start of reading vis data

--    for output_kind in output_kind_type'range loop
   --continue : loop

      --exit continue when enabled_outputs (output_kind) = false;
      --  !!! iterate through arguments instead?
--       if not enabled_outputs (output_kind) then
--          goto continue;
--       end if;

--       Create
--         (file => csv_file,
--          mode => out_file,
--          name => cli.argument (csv_file_name_prefix_arg)
--            & '_' & output_kind'image & ".obj");

--       put_line ("creating output file with name '"
--         & cli.argument (csv_file_name_prefix_arg)
--         & '_' & output_kind'image & ".obj'");

--       case output_kind is

         --  !!! must set file index before or inside each function for section

--          when section_1 =>
--            null;
-- 
--          when section_2 =>
--            null;

--          when section_3_entry_meta_data | section_3_entries =>
--            sio.set_index (vis_file, SIO.positive_count (vis_header.sect_3_offset + 1));
--            --  ! have to add 1 because file index type in ada is 1 based
--            sect_3_read (output_kind);
-- 
--          when section_4_entry_meta_data | section_4_entries =>
--            sio.set_index (vis_file, SIO.positive_count (vis_header.sect_4_offset + 1));
--            --  ! have to add 1 because file index type in ada is 1 based
--            sect_4_read (output_kind);
--       end case;

--       close (csv_file);

--       <<continue>>
     -- exit continue;
   --end loop continue;
--    end loop;


   sio.close (vis_file);
   sio.close (vis_out_file);

end track_vis;
