
with interfaces; use interfaces;

with ada.text_io; use ada.text_io;
with ada.strings.fixed;
with ada.command_line;
with ada.directories;
with ada.streams.stream_io;



procedure track_vis_s4_read is

   package cli renames ada.command_line;
   package dir renames ada.directories;
   package sio renames ada.streams.stream_io;

   NL : constant String := character'val (13) & character'val (10);


   --test_data : string (1 .. 533 * 1000) := (others => '0');
   --   ! ^ can cause stack overflow on program start if too large

   type cartesian_coord is (X, Y, Z);  --  ! use prefix?

   --axis : cartesian_coord := cartesian_coord'val (1);

   type vec_3_type is array (cartesian_coord) of ieee_float_32
     with pack => true;

--  !!! ---------------------------------------------------------

--  REMEMBER:
--  everything has only been tested with grid autosport so far

-----------------------------------------------------------------


   --  ! at least grid 2, autosport and possibly dirt rally (ds not checked yet)
   type vis_header_g2_type is record
      vis_file_id : unsigned_32;  -- 0x0
      sect_4_entry_count : unsigned_32;  --  0x4
      sect_2_entry_count : unsigned_32;  --  !!! 0x8 only somewhat educated guess from frontend vis file
      --  !!!! likely will need name change too in future

      --  ! appears to never go above 599? many medium or larger track routes
      --    all have 599 enrties, but other tracks can have smaller value
      --    (only tested autosport so far)
      sect_3_entry_count : unsigned_32;  --  0xC

      sect_2_entry_meta_data_length : unsigned_32;  -- 0x10
      --  !!! 'entry_header' instead? still not yet completely determined
      --  !!! 'cell' entry? appears to be two headers read to find visible items
      --      for corresponding view cell

      header_length : unsigned_32;  --  0x14
      sect_2_offset : unsigned_32;  --  0x18, 7
      sect_3_offset : unsigned_32;  --  0x1c

      --  ! different routes of same track usually have same or similar bounds
      --    (route_0 and route_1 of washington omly differ in max bound on y axis)
      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      --bounds_min_x : ieee_float_32; --  0x20
      --bounds_min_y : ieee_float_32; --  0x24
      --bounds_min_z : ieee_float_32; --  0x28
      bounds_min : vec_3_type;

      sect_4_offset : unsigned_32;  --  0x2c

      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      --bounds_max_x : ieee_float_32;  --  0x30
      --bounds_max_y : ieee_float_32;  --  0x34
      --bounds_max_z : ieee_float_32;  --  0x38
      bounds_max : vec_3_type;

      unknown_likely_padding : unsigned_32;  -- 0x3c

      unknown_count_3    : unsigned_32;  --  0x40
      possible_padding_1 : unsigned_32;  --  0x44
      optional_count_1   : unsigned_32;  --  0x48
      optional_count_2   : unsigned_32;  --  0x4c
      optional_count_3   : unsigned_32;  --  0x50
      unknown_1          : unsigned_32;  --  0x54
      optional_count_4   : unsigned_32;  --  0x58

      unknown_2  : unsigned_32;  --  0x5c
      unknown_3  : unsigned_32;  --  0x60
      unknown_4  : unsigned_32;  --  0x64
      unknown_5  : unsigned_32;  --  0x68
      unknown_6  : unsigned_32;  --  0x6c
      unknown_7  : unsigned_32;  --  0x70
      unknown_8  : unsigned_32;  --  0x74
      unknown_9  : unsigned_32;  --  0x78
      unknown_10 : unsigned_32;  --  0x7c
   end record;


   --  ! use hexadecimal offsets in variable names?


   type sect_4_entry_meta_data_type is record

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
      unknown_float_x1 : ieee_float_32;
      unknown_float_y1 : ieee_float_32;
      unknown_float_z1 : ieee_float_32;
      -- ! related to s3 and 4? grid boundaries (minimum or maximum point positions)?
      unknown_float_x2 : ieee_float_32;
      unknown_float_y2 : ieee_float_32;
      unknown_float_z2 : ieee_float_32;

      point_count : unsigned_32;  --  ! vector count? matrix length?
      entry_index : unsigned_32;
   end record;

   type sect_4_entry_type is record
      x, y, z : ieee_float_32;

      --  ! appears to be twoo 16 bit integers, always appear to have same
      --    value, and always appear to be same in every entry, only differing per file.
      --
      ---   may be related to other section while also not being used?
      unknown_1: unsigned_16;
      unknown_2: unsigned_16;
   end record;



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
   vis_stream : SIO.stream_access;

   vis_header : vis_header_g2_type;


   csv_file : File_type;

   obj_file : File_type;
   vertex_count : Natural := 0;
   face_index : Positive := 1;


   type sect_3_entry_meta_data_type is record
      --  !  possibly min bound related?
      unknown_float_x1 : ieee_float_32;  --  ! possibly not float value in every entry meta data?
      unknown_float_y1 : ieee_float_32;
      unknown_float_z1 : ieee_float_32;

      --  ! possible ID?
      unknown_count_1 : unsigned_16;  --  ! make sure not signed
      unknown_count_2 : unsigned_16;  --  ! make sure not signed

      --  possibly max bound related?
      unknown_float_x2 : ieee_float_32;
      unknown_float_y2 : ieee_float_32;
      unknown_float_z2 : ieee_float_32;

      entry_index : unsigned_16;
      --  !!! value is shifted left 4 bits to calculate index for array of ptrs
      --      to sect_3 entries and array of 0s instance var in visibilitySystem

      point_pair_count : unsigned_16;
      --  1-based

      next_entry_offset : unsigned_32;
      --  final entry as next offset of 0

      --  !!!! may also be some sort of index for other area or data?
      --  ! grid cell id, terrain chunk, ornament id?
      possible_id_1 : unsigned_16;
      possible_id_2 : unsigned_16;  --  ! more likely to be grid cell id? or still possible id or index for ornaments of chunk?

      --  ! only ever seen value of 0
      unknown_value_1 : unsigned_32;
      --  ! only seen valie of 2 or 0, not yet seen reason for specific value
      unknown_value_2 : unsigned_32;
   end record;


   --  !!! rename 'point_pair_type'?
   --  ! number of entries determined by 'point_pair_count' of meta data
   type sect_3_entry_type is record
      --x1, y1, z1 : ieee_float_32;
      point_1 : vec_3_type;

      --  ! related to bit mask operation with value from QueryParams, treated
      --    as single 32 bit int in addAllItemsToVisibleSet()
      unknown_bitmask : unsigned_32;  --  !!! ensure is not bit string (data being masked)
                                      --  !!! also used (after additional math) as index for retrieving value from specific area in VisibleSet
      --unknown_id_or_index_1 : unsigned_16;
      --unknown_id_or_index_2 : unsigned_16;

      --x2, y2, z2 : ieee_float_32;
      point_2 : vec_3_type;

      --  ! also appears to be used as 32 bit value?
      unknown_index : unsigned_32;  --  !!! may also be some sort of ID?
      --unknown_id_or_index_3 : unsigned_16;
      --unknown_id_or_index_4 : unsigned_16;
   end record;


--  !!! FIX: empty groups/objs somehow occurring when sect_3 entry is empty

   procedure sect_3_obj_import is
   
      --   !!! read from file and update?
      new_entry : sect_3_entry_type;
   
      point_pair : array (positive range 1 .. 6) of ieee_float_32;

      procedure parse_v_pair (v_pair : in string) is
        si : positive := 3;  --  start at first float (x)
        axis : positive := 1;
      begin
         for ei in v_pair'range loop
            if v_pair (ei) = ' ' then
               point_pair (axis) := ieee_float_32'value (v_pair (si .. ei - 1));
               exit when axis = 6;
               si := ei + 1;
               axis := axis + 1;
            end if;
         end loop;
      end parse_v_pair;

   begin
      loop
         declare
            --  !!! only safe if lines in file is even, need to
            --      safely fail if not
            line_1 : constant string := get_line (csv_file);
            line_2 : constant string := get_line (csv_file);
            --   !!! either move line_2 to other location or look ahead single byte?
         begin
            case line_1 (1) is
               when 'v' =>
                  parse_v_pair (line_1 & line_2 (3 .. line_2'last));
                  --  point 1
                  new_entry.x1 := point_pair (1);
                  new_entry.y1 := point_pair (2);
                  new_entry.z1 := point_pair (3);
                  --  point 2
                  new_entry.x2 := point_pair (4);
                  new_entry.y2 := point_pair (5);
                  new_entry.z2 := point_pair (6);
               when 'g' =>
                 --  ! go to next entry
                 null;
               when others => null;
            end case;
            null;
         end;

         exit when end_of_file (csv_file);
      end loop;
   end sect_3_obj_import;

   --  ! rename 'area' 'sub_section'?
   procedure sect_3_read (sect_area : output_kind_type) is
      meta_data : sect_3_entry_meta_data_type;
      entry_pair : sect_3_entry_type;

      entry_index : Natural := 0;  --  !!! remove, rename? use possible index from file instead?
   begin
      loop
         sect_3_entry_meta_data_type'read (vis_stream, meta_data);

         put_line ("program sect_3 entry index" & entry_index'image);
         put_line ("index from inside file" & meta_data.entry_index'image);
         put_line ("entry has" & meta_data.point_pair_count'image & " point pairs");
         put_line
           ("meta data unknown value 1:" & meta_data.unknown_value_1'image & NL
             & "meta data unknown value 2:" & meta_data.unknown_value_2'image);
         put_line ("________________________________");

         if sect_area = section_3_entry_meta_data then
--             put_line
--               ("X:" & meta_data.unknown_float_x1'image & ", " &
--                "Y:" & meta_data.unknown_float_y1'image & ", " &
--                "Z:" & meta_data.unknown_float_z1'image & NL   &
-- 
--                "  " & meta_data.unknown_float_x2'image & ", " &
--                "  " & meta_data.unknown_float_y2'image & ", " &
--                "  " & meta_data.unknown_float_z2'image & NL);

            put (csv_file,
              meta_data.unknown_float_x1'image & ',' &
              meta_data.unknown_float_y1'image & ',' &
              meta_data.unknown_float_z1'image & ';' &

              meta_data.unknown_float_x2'image & ',' &
              meta_data.unknown_float_y2'image & ',' &
              meta_data.unknown_float_z2'image & ';');
         end if;

         --put_line ("point" & entry_index'image & ':');

         Create
           (file => csv_file,
            mode => out_file,
            name => cli.argument (csv_file_name_prefix_arg)
              & "_SECTION_3_ENTRIES_"
              & ada.strings.fixed.trim (entry_index'image, ada.strings.left)
              & ".obj");

--          put_line (csv_file, "g Object_"
--            & ada.strings.fixed.trim (entry_index'image, ada.strings.left) & NL
--            & "s 0");

         for pair_index in 1 .. meta_data.point_pair_count loop

            sect_3_entry_type'read (vis_stream, entry_pair);

            if sect_area = section_3_entries then
               put_line
                 ("X:" & entry_pair.x1'image & ", " &
                  "Y:" & entry_pair.y1'image & ", " &
                  "Z:" & entry_pair.z1'image & NL   &

                  "  " & entry_pair.x2'image & ", " &
                  "  " & entry_pair.y2'image & ", " &
                  "  " & entry_pair.z2'image & NL);

               put_line (csv_file, "v "    &
                 entry_pair.x1'image & " " &
                 entry_pair.y1'image & " " &
                 entry_pair.z1'image &

                 NL &

                 "v "                      &
                 entry_pair.x2'image & " " &
                 entry_pair.y2'image & " " &
                 entry_pair.z1'image);

               vertex_count := vertex_count + 2;

            end if;
         end loop;

         close (csv_file);

         --  ! (for previous case statement) below does not work:
         --      - can use if statementes
         --      - could separate reading of areas by navigating using
         --        offsets instead of reading all data to move file index

         --  ! possible to file write generic by changing which which is written
         --    to (stdout or csv) at cost of formatting stdout

         exit when meta_data.next_entry_offset = 0;

         if meta_data.point_pair_count = 0 then
            goto continue;
         end if;


         --put_line ("Vertex count:" & vertex_count'image);
         --put_line ("face index:" & face_index'image);

--          put (csv_file, "f");
--          loop
--             put (csv_file, face_index'image);
--             exit when face_index = vertex_count;
--             put_line ("face index:" & face_index'image);
--             face_index := face_index + 1;
--          end loop;
-- 
--          new_line (csv_file);
--          face_index := face_index + 1;
           --   !!! 

         <<continue>>

         entry_index := entry_index + 1;

      end loop;


   end sect_3_read;

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


   procedure sect_4_read (sect_area : output_kind_type) is

      s4_entry_meta_data : sect_4_entry_meta_data_type;
      s4_entry : sect_4_entry_type;

   begin

      loop
         exit when sio.end_of_file (vis_file);

         sect_4_entry_meta_data_type'read (vis_stream, s4_entry_meta_data);

         put_line ("entry index:" & s4_entry_meta_data.entry_index'image);
         put_line ("entry point count:" & s4_entry_meta_data.point_count'image);

         exit when sio.end_of_file (vis_file);
         --  ! when last entry has no contents, warn when occurs?

         if sect_area = section_4_entry_meta_data then
           put_line
             ("X:" & s4_entry_meta_data.unknown_float_x1'image & ',' &
              "Y:" & s4_entry_meta_data.unknown_float_y1'image & ',' &
              "Z:" & s4_entry_meta_data.unknown_float_z1'image & NL  &

              "  " & s4_entry_meta_data.unknown_float_x2'image & ',' &
              "  " & s4_entry_meta_data.unknown_float_y2'image & ',' &
              "  " & s4_entry_meta_data.unknown_float_z2'image & NL);

           put (csv_file,
             s4_entry_meta_data.unknown_float_x1'image & ',' &
             s4_entry_meta_data.unknown_float_y1'image & ',' &
             s4_entry_meta_data.unknown_float_z1'image & ';' &

             s4_entry_meta_data.unknown_float_x2'image & ',' &
             s4_entry_meta_data.unknown_float_y2'image & ',' &
             s4_entry_meta_data.unknown_float_z2'image & ';');
         end if;

         if s4_entry_meta_data.point_count = 0 then
            put_line ("entry has no points");
         else
            for entry_index in 1 .. s4_entry_meta_data.point_count loop
               sect_4_entry_type'read (vis_stream, s4_entry);

               if sect_area = section_4_entries then
                  put_line ("point" & entry_index'image & ':');
                  put_line ("X:" & s4_entry.x'image & NL
                    & "Y:"  & s4_entry.y'image & NL
                    & "Z:"  & s4_entry.z'image & NL
                    & "unknown ui16 1:" & s4_entry.unknown_1'image & NL
                    & "unknown ui16 2:" & s4_entry.unknown_2'image & NL);

                  put (csv_file,
                    s4_entry.x'image & ',' &
                    s4_entry.y'image & ',' &
                    s4_entry.z'image & ';');
               end if;
            end loop;
         end if;

      end loop;

   end sect_4_read;



begin
   --put_line ("possibe_grid_bounds_type size:" & possible_grid_bounds_type'size'image);

   if cli.argument_count /= 2 then
      put_line ("2 arg");
      return;
   end if;

   if not dir.exists (cli.argument (track_vis_file_name_arg)) then
      put_line ("file for first arg doesnt exist");
      return;
   end if;

   sio.open (vis_file, sio.in_file, cli.argument (track_vis_file_name_arg));
   vis_stream := sio.stream (vis_file);

   put_line ("file size:" & sio.size (vis_file)'image & ", index:"
     & sio.index (vis_file)'image);

   vis_header_g2_type'read (vis_stream, vis_header);

   if vis_header.vis_file_id /= 4 then
      put_line ("not valid vis file");
      return;
   end if;


   --   !!! this doesnt work anymore (since multiple output)

   if dir.exists (cli.argument (csv_file_name_prefix_arg)) then
      put_line ("File with name '" & cli.argument (csv_file_name_prefix_arg)
        & "' already exists, overwrite?");
      put ("enter 'Y' and press enter to continue >");
      if get_line /= "Y" then
         return;
      end if;
   end if;

   --  start of reading vis data

   for output_kind in output_kind_type'range loop
   --continue : loop

      --exit continue when enabled_outputs (output_kind) = false;
      --  !!! iterate through arguments instead?
      if not enabled_outputs (output_kind) then
         goto continue;
      end if;

--       Create
--         (file => csv_file,
--          mode => out_file,
--          name => cli.argument (csv_file_name_prefix_arg)
--            & '_' & output_kind'image & ".obj");

      put_line ("creating output file with name '"
        & cli.argument (csv_file_name_prefix_arg)
        & '_' & output_kind'image & ".obj'");

      case output_kind is

         --  !!! must set file index before or inside each function for section

--          when section_1 =>
--            null;
-- 
--          when section_2 =>
--            null;

         when section_3_entry_meta_data | section_3_entries =>
           sio.set_index (vis_file, SIO.positive_count (vis_header.sect_3_offset + 1));
           --  ! have to add 1 because file index type in ada is 1 based
           sect_3_read (output_kind);

         when section_4_entry_meta_data | section_4_entries =>
           sio.set_index (vis_file, SIO.positive_count (vis_header.sect_4_offset + 1));
           --  ! have to add 1 because file index type in ada is 1 based
           sect_4_read (output_kind);
      end case;

      close (csv_file);

      <<continue>>
     -- exit continue;
   --end loop continue;
   end loop;


   put_line ("section 4 offset:" & vis_header.sect_4_offset'image);
   put_line ("section 4 coordinates:");
   put_line ("section 4 has" & vis_header.sect_4_entry_count'image & " enrties");

   sio.close (vis_file);

end track_vis_s4_read;
