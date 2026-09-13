
pragma allow_integer_address;


with ada.text_io; use ada.text_io;
with ada.strings.fixed;
with ada.command_line;
with ada.streams.stream_io;
with ada.directories;

with interfaces; use interfaces;

with system;
with system.memory;

with gnat.sse;
with gnat.sse.vector_types;
with gnat.sockets;
with gnat.os_lib;
-- with gnat.ctrl_c;  --  works but requires adequate program execution time to
                      --  occur to function (sleep, for > 250ms?)

with udp_streams;

with ego_telemetry;

-- with sigint_handler;



procedure view_cell_read_test is --return ada.command_line.exit_status is

   package str renames ada.strings;
   package fstr renames ada.strings.fixed;

   package SIO renames ada.streams.stream_io;
   use type sio.count;

   package CLI renames ada.command_line;

   package Dir renames ada.directories;
   use type dir.file_kind;

   package sse_vt renames gnat.sse.vector_types;
   package sse renames gnat.sse;

   package os renames gnat.os_lib;

   package sys renames system;

   --package globals is
   --end globals;

   --  makes more sense to make separate package so variables exist
   --  at package level scope (and other?)?

   --  or?

   -- type program_globals_type is record


   function read_entire_file (name : string) return system.address is
      fd : os.file_descriptor;
      buffer : system.address;

   begin
      if not dir.exists (name) or else
             dir.kind   (name) = dir.directory
      then
         return system.null_address;
      end if;

      fd := os.open_read (name, os.binary);
      buffer := sys.memory.alloc (sys.memory.size_t (os.file_length (fd)));  --  check too?

      if os.read (fd, buffer, integer (os.file_length (fd))) =
         integer (os.file_length (fd))
      then
         return buffer;
      end if;

      put_line ("ERROR read count not same as alloc size");
      return system.null_address;
   end read_entire_file;


   pragma compile_time_error (integer'size /= 32, "integer unexpected size");
   pragma compile_time_error (float'size /= 32, "float unexpected size");


   function ia32_psrldq (vector : sse_vt.m128i; shift_amount : integer) return sse_vt.m128i
     with import, inline_always, external_name => "__builtin_ia32_psrldqi128", convention => intrinsic;
   --pragma Import (Intrinsic, ia32_psrldq, "__builtin_ia32_psrldqi128");

   function ia32_pslldq (vector : sse_vt.m128i; shift_amount : integer) return sse_vt.m128i
     with import, inline_always, external_name => "__builtin_ia32_pslldqi128", convention => intrinsic;


   function ia32_por128 (left, right : in  sse_vt.m128i) return sse_vt.m128i
     with import, inline_always, external_name => "__builtin_ia32_por128", convention => intrinsic;




   type cartesian_coord is (x, y, z, w);
   subtype coord_2d is cartesian_coord range x .. y;
   subtype coord_3d is cartesian_coord range x .. z;
   subtype coord_4d is cartesian_coord range x .. w;

   --type vec3 is array (coord_3d) of float;
   type point3 is array (coord_3d) of float;



   type v4t is array (positive range 1 .. 4) of float
     with alignment => sse.vector_align,
          pack      => true;
   pragma Machine_Attribute (v4t, "vector_type");
   pragma Machine_Attribute (v4t, "may_alias");


  --  use float_array instead? subtype?

   type vector_view is (m128, vf);
   type v4t_test (view : vector_view := vector_view'(m128)) is record
      case view is
         when m128 => m128_view : sse_vt.m128i;
         when vf => float_view : v4t;
      end case;
   end record
     with alignment => sse.vector_align,
          pack      => true,
          unchecked_union;


   in_vec : v4t_test := (vf, (1.0, 1.0, 1.0, 1.0));
   out_vec : v4t_test := (m128, ia32_psrldq (in_vec.m128_view, 12 * 8));
   --in_vec : v4t_test := (1.0, 1.0, 1.0, 1.0);  --  causes eerroneous memory access during compile?

   function v4t_image (v : in v4t) return string is
     (v (1)'image & v (2)'image & v (3)'image & v (4)'image & " ");



   function ia32_mulps (left, right : in v4t) return v4t
     with import, inline_always, external_name => "__builtin_ia32_mulps", convention => intrinsic;

   function ia32_addps (left, right : in v4t) return v4t
     with import, inline_always, external_name => "__builtin_ia32_addps", convention => intrinsic;

   --function "*" (left, right : in v4t) return v4t
   --  with import, inline_always, external_name => "__builtin_ia32_mulps", convention => intrinsic;


--    function imm (value : in integer) return integer is
--      (value) with inline, static;


   type byte_shift_amount is
     (shift_1_byte, shift_2_bytes, shift_3_bytes, shift_4_bytes,
      shift_5_bytes, shift_6_bytes, shift_7_bytes, shift_8_bytes,
      shift_9_bytes, shift_10_bytes, shift_11_bytes, shift_12_bytes,
      shift_13_bytes, shift_14_bytes, shift_15_bytes, shift_16_bytes);


   --  unchecked union?

   function psrldq (vector : in v4t; shift : in byte_shift_amount) return v4t with inline is
      vec_m128_view : sse_vt.m128i with address => vector'address;

      result_vec       : v4t;
      result_m128_view : sse_vt.m128i with address => result_vec'address;
   begin
      case shift is
         when shift_1_byte => result_m128_view := ia32_psrldq (vec_m128_view, 1 * 8);
         when shift_2_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 2 * 8);
         when shift_3_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 3 * 8);
         when shift_4_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 4 * 8);
         when shift_5_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 5 * 8);
         when shift_6_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 6 * 8);
         when shift_7_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 7 * 8);
         when shift_8_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 8 * 8);
         when shift_9_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 9 * 8);
         when shift_10_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 10 * 8);
         when shift_11_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 11 * 8);
         when shift_12_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 12 * 8);
         when shift_13_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 13 * 8);
         when shift_14_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 14 * 8);
         when shift_15_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 15 * 8);
         when shift_16_bytes => result_m128_view := ia32_psrldq (vec_m128_view, 16 * 8);
      end case;
      return result_vec;
   end psrldq;


   function pslldq (vector : in v4t; shift : in byte_shift_amount) return v4t with inline is
      vec_m128_view : sse_vt.m128i with address => vector'address;

      result_vec       : v4t;
      result_m128_view : sse_vt.m128i with address => result_vec'address;
   begin
      case shift is
         when shift_1_byte => result_m128_view := ia32_pslldq (vec_m128_view, 1 * 8);
         when shift_2_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 2 * 8);
         when shift_3_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 3 * 8);
         when shift_4_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 4 * 8);
         when shift_5_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 5 * 8);
         when shift_6_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 6 * 8);
         when shift_7_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 7 * 8);
         when shift_8_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 8 * 8);
         when shift_9_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 9 * 8);
         when shift_10_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 10 * 8);
         when shift_11_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 11 * 8);
         when shift_12_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 12 * 8);
         when shift_13_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 13 * 8);
         when shift_14_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 14 * 8);
         when shift_15_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 15 * 8);
         when shift_16_bytes => result_m128_view := ia32_pslldq (vec_m128_view, 16 * 8);
      end case;
      return result_vec;
   end pslldq;


   function por_128 (vector_1, vector_2 : in v4t) return v4t with inline is
      vec1_m128_view : sse_vt.m128i with address => vector_1'address;
      vec2_m128_view : sse_vt.m128i with address => vector_2'address;

      result_vec       : v4t;
      result_m128_view : sse_vt.m128i with address => result_vec'address;
   begin
      result_m128_view := ia32_por128 (vec1_m128_view, vec2_m128_view);
      return result_vec;
   end por_128;


   function to_m128 (vector : in v4t) return sse_vt.m128i is
      vec_m128_view : sse_vt.m128i with address => vector'address;
   begin
      return vec_m128_view;
   end to_m128;

   function to_v4t (intrinsic_vec : in sse_vt.m128i) return v4t is
      vec_f32_view: v4t with address => intrinsic_vec'address;
   begin
      return vec_f32_view;
   end to_v4t;



   type byte_array is array (positive range 1 .. 16) of unsigned_8 with pack => true;

   pragma Compile_Time_Error (v4t'size /= byte_array'size, "sizes not the same");


   type float_array is array (unsigned_16 range <>) of float;

   type ui32_array is array (positive range <>) of unsigned_32;

   subtype ui32 is unsigned_32;
   subtype ui16 is unsigned_16;
   subtype ui8 is unsigned_8;

   --  in backup of file
   --  incorrect? psldq intrunsions shift data opposite to direction in name
   --  because x86 endianess?

   --  0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
   --  x x x x
   --procedure sl_test (a : in out v4t; ss : in positive) with inline is

   --  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
   --  x x x x x
   --procedure sr_test (a : in out v4t; ss : in positive) with inline is

   function "+" (right : string) return access string
     is (right'unrestricted_access) with inline;


   axis_str : constant array (coord_3d) of access constant string :=
     (+"x", +"y", +"z"); --+"INVALID");

   unit_vectors : constant array (unsigned_16 range 0 .. 2) of v4t :=
     ((1.0, 0.0, 0.0, 0.0),   --  x
      (0.0, 1.0, 0.0, 0.0),   --  y
      (0.0, 0.0, 1.0, 0.0));  --  z


   --  so far value is in binary of:
   --    - dirt 3 (can assume is used in all future games?)
   --    - not found in dirt showdown yet
   --    - grid 2
   --    - autosport
   --    - possibly dr1 (doesnt appear on 4 byte boundary?)

   --  factor?
   --
   --  1048575
   scale : constant float := 0.0000009536752; --0.0001;   --  world space scale?


   testXs : unsigned_32 := shift_left (1, 24);
   testXsf : float := float (testXs);


   --  found by seeing where each offset/index into VisibletSet.m_staticLayers array
   --  is used in code (what function 'm_itemList' in each layer is passed to).
   --
   --  (almost?) all accesses occur in
   --  'CMR6::MainGameRenderer::buildAsynchronousRenderInstanceLists()', where
   --  objects that correspond to the indices/ids in each layers list is
   --  prepared to be sent to gpu.
   --  (renamed to 'MainScreenRenderer' in dirt rally 1)? check again
   --
   --  only checked grid autosport so far, can only find use of some layers.
   --
   --  static layer kind, name?
   type static_layer_name is
     (track_block,  --  0
      ground_cover,
      ornaments,
      trees,
      crowd,  -- and led flares?
      unknown_sl_5,
      interactive_water,  --  appears to be interactive water only (only used in dirt games) (old?: interactive and non interactive)
      tbd_ground_clutter,  -- ? certain entities?
      lights, --  local lights (not sun or global illumination), usually only has value with tracks that have night/sunset conditions
      unknown_sl_9,
      unknown_sl_10,
      unknown_sl_11,
      unknown_sl_12,
      unknown_sl_13,
      unknown_sl_14,
      unknown_sl_15);  --  16 total

   pragma compile_time_error (static_layer_name'pos (static_layer_name'last) /= 15, "incorrect number of static layer (must be 0 - 15)");


   type static_layer_item_num is array (static_layer_name) of unsigned_32;

   pragma compile_time_error (static_layer_item_num'size /= 64 * 8, "static layer item num array unexpected size (not 64 bytes)");


   type header is record
      version : unsigned_32;  --  0x0
      numViewCells : unsigned_32;  --  0x4
      numLeafViewCells : unsigned_32;  -- 0x8
      numObjectTreeNodes : unsigned_32;  --  0xc
      pvsBytesPerViewCell : unsigned_32;  --  0x10
      viewCellListStart : unsigned_32;  --  0x14
      pvsListStart : unsigned_32;  --  0x18
      objectListStart : unsigned_32;  --  0x1c
      viewCellBoundsMin : point3; --float_array (0 .. 2);  --  0x20

      --  valid offset in file with actual data, but never used in retail game.
      --  same number of debugViewCellInfo entries as numViewCells
      debugViewCellsStart : unsigned_32;  --  0x2c

      viewCellBoundsMax : point3; --float_array (0 .. 2);  --  0x30

      --  only seen null/0 so far, may not ever have been in shipping vis file
      --  (would be 5th/last 'section' of file if present)
      debugPVSBlockersStart : unsigned_32;  --  0x3c,

      numObjectsInStaticLayer : static_layer_item_num;  --  0x40  ..  0x80 (128)
   end record
     with pack;

   pragma compile_time_error (header'size /= 128 * 8, "vis header incorrect size (not 128 bytes)");

-- 
--    package test_s is
--       procedure test_p;
--    end test_s;
-- 
--    package body test_s is
--       procedure test_p is
--       begin
--          null;
--       end test_p;
--    end test_s;

   --package vc_kind is
      type vc_kind is (node, leaf, debug);
   --end vc_kind;

   --  neon::VisibilitySystem::PVSCompression::Scheme?
   type pvs_compression_scheme is
     (None,  --  !  0
      RLEBit8,
      RLEBit16,
      RLEByte8,
      RLEByte16);
      --Max);

   --  ! using type to read from stream seems to alter data?
   --  !  because of bit fields?
   type view_cell_node is record
      frontIndex              : unsigned_16 range 0 .. 8191; -- 13 bits  
      planeAxis               : unsigned_16 range 0 .. 3;    -- 2 bits   
      backIndexTopBit         : unsigned_16 range 0 .. 1;    -- 1 bit    
      backIndexLowerBits      : unsigned_16 range 0 .. 4095; -- 12 bits  
      planeDistanceTopBits    : unsigned_16 range 0 .. 15;   -- 4 bits   
      planeDistanceBottomBits : Unsigned_16;
   end record
     with pack => true;

   type view_cell_leaf is record
      isNonLeaf          : unsigned_16;
      pvsOffsetLowerBits : unsigned_16;  --  offset is from start of file
      pvsOffsetTopBits   : unsigned_8;
      compressionScheme  : unsigned_8;
   end record
     with pack => true;

   type view_cell_debug is record
      --  'm_vals', array of 3 unsigned shorts
      value_1 : unsigned_16;
      value_2 : unsigned_16;
      value_3 : unsigned_16;
   end record
     with pack => true;

   type view_cell_union (kind : vc_kind := vc_kind'(node)) is record
      case kind is
         when vc_kind'(node)  => node  : view_cell_node;
         when vc_kind'(leaf)  => leaf  : view_cell_leaf;
         when vc_kind'(debug) => debug : view_cell_debug;
      end case;
   end record
     with pack => true,
          unchecked_union => true;

   pragma compile_time_error (view_cell_union'size / 8 /= 6, "union not correct size");



   --  pvs list
   --  bit_array, string?
   type bit_list is array (natural range <>) of boolean with pack;

   pragma compile_time_error (boolean'size /= 1, "boolean unxpected size");


   type Object_Node is record
      min : point3;  --  0x0
      pvsByteOffset : unsigned_16; --  0xC, offset to byte in uc pvs data for ObjectNode
      pvsBitOffset : unsigned_16;  --  0xE, offset to bit in byte of uc pvs data?
      max : point3;  --  0x10
      index : unsigned_16;   --  0x1c, index of ObjectNode in vis file, not related index of track blocks array? but last index is usually same as last index of track block array (differs per game)? can be smaller but never over? i.e. 599 in dirt rally */
      numStaticObjects : unsigned_16;  --  0x1e
      nextOffset : unsigned_32;  --  0x20
      nextSize : unsigned_16;  --  0x24
      depth : unsigned_16;   -- 0x26,  z depth in physical space of world? depth in tree data structure of object nodes, but not actually a tree? used in calcVisibleSet (likely others), compared with depth of previous ObjNode in relation to whether previous was visible or not. bounds of static item used in TBD calculation and placed in depth field of item in VisibleSet item list. depth relative to? world origin, center (from world min and max bounds)? statically determined in advanced so cannot be based on player position? */
      pad : ui32_array (1 .. 2);  --  0x28
   end record  --  size 0x30
     with pack;

   type Object_node_access is access all object_node;

   pragma compile_time_error (object_Node'size /= 48 * 8, "object node incorrect size (not 48 bytes)");

   type Static_Item is record
      boundsMin : point3; --  0x0, 0x4, 0x8
      layer : unsigned_32;  --  0xc
      boundsMax : point3; --  0x10, 0x14, 0x18
      id : unsigned_32; --  0x1c
   end record
     with pack;

   type static_item_access is access all static_item;

   pragma compile_time_error (static_Item'size /= 32 * 8, "static item incorrect size (not 32 bytes)");



   --  neither below types used in code executed in retail game, but is in
   --  every vis file seen so far in computer versions (strangely wasted memory).
   --
   --  unrelated to 'view_cell_debug' type in first section
   --  (view cell list) of file

   type Debug_View_Cell_Info is record

      --  min bounds of view cell
      min : point3; --float_array (1 .. 3);  --  0x0

      --  max bounds of view cell
      max : point3; --float_array (1 .. 3);  -- 0xc

      --  number of sample points in view cell (positions visibility was tested from).
      --  always 9 samples from vis files seen so far.
      numSamples : unsigned_32;  --  0x18

      --  view cell index? index for header.viewCellListStart?
      id : unsigned_32;  --  0x1c

   end record  --  0x20
     with pack;

   type debug_view_cell_info_array is array (ui32 range <>) of debug_view_cell_info;

   pragma compile_time_error (debug_view_cell_info'size /= 32 * 8, "debug view cell info incorrect size (not 36 bytes)");


   --  doesnt seem to contain valid data in games seen so far?
   --  numVisibleNodes and numVisibleObjects both have same value, and are also
   --  the same between each DebugViewCellInfo. value not checked for purpose
   --  yet but possibly same as total number of static items (which doesnt
   --  make sense as there shouldnt ever really be situation with same number
   --  of object nodes and static items).
   type debug_view_cell_pvs_sample is record

      --  position sample was taken?
      position : point3; --float_array (1 .. 3);  --  0x0

      --  number of ObjectNodes visible from sample position
      numVisibleNodes : unsigned_16;  --  0xc

      --  number of StaticItems visible from sample position
      numVisibleObjects : unsigned_16;  --  0xe
   end record  --  0x10
     with pack;

   type debug_view_cell_pvs_sample_array is array (ui32 range <>) of debug_view_cell_pvs_sample;

   pragma compile_time_error (debug_view_cell_pvs_sample'size /= 16 * 8, "debug view cell pvs sample incorrect size (not 16 bytes)");

   --  point3f
   --  vec3f
   --  vec4f
   --  matrix3
   --  matrix4
   --  matrix4x3?
   --  matrix3x4?

   --type point3 is array (unsigned_16 range 0 .. 2) of float with pack => true;
   --worldMin, worldMax : point3;


   --num_view_cells : unsigned_32;

   --  order of vis file
   --  put each var underneath type?

   vis_header : header;

   worldMin : point3 renames vis_header.viewcellBoundsMin;
   worldMax : point3 renames vis_header.viewcellBoundsMax;


   no_leaf_error : exception;

   type vc_union_array is array (unsigned_32 range <>) of aliased view_cell_union;

   view_cells : vc_union_array (1 .. 10_000);

   debug_vc_info : access debug_view_cell_info_array;
   debug_vc_samples : access debug_view_cell_pvs_sample_array;

   --  pvs data, uncompressed size?

   --  objectNode

   --  staticItem



   type debug_type is record
      vc : view_cell_union;

      plane_distance : ui32;
      back_index : unsigned_16;
      position : v4t;
      side : character;
   end record;

   r_count : natural := 0;
   vc_last_50 : array (0 .. 49) of debug_type;

   procedure handle_r_limit is
   begin
      put_line ("last 50 vc");
      new_line;
      for d of vc_last_50 loop
         if d.vc.leaf.isNonLeaf /= 0 then
            put_line ("position: " & v4t_image (d.position));
            put_line ("side: " & d.side);
            put_line ("plane axis: " & coord_3d'val (d.vc.node.planeAxis)'image);
            put_line ("plane distance" & float (d.plane_distance)'image);
            put_line ("front index:" & d.vc.node.frontIndex'image);
            put_line ("back_index:" & d.back_index'image);
         else
            --  leaf
            null;
         end if;
         new_line (2);
      end loop;
   end handle_r_limit;


   type trace_type is record
      vc : view_cell_union;

      node_index : unsigned_32;
      plane : float;
      --back_index : unsigned_16;
      --position : v4t;
      side : character;
   end record;

   trace_index : natural := 0;
   trace : array (0 .. 49) of trace_type;



   function findViewCell
     (vc : in view_cell_union;
      p_pos  : in v4t;
      vc_index : in unsigned_32 ) return view_cell_leaf
   is

      use type system.address;

      --worldMin : float_array (0 .. 2) with address => vis_header.viewCell


      plane_distance : constant unsigned_32 :=
        ui32 (vc.node.planeDistanceBottomBits)
          or shift_left (ui32 (vc.node.planeDistanceTopBits), 16);
          --  top bits must be casted before shift

      back_index : constant unsigned_16 := vc.node.backIndexLowerBits or
        shift_left (vc.node.backIndexTopBit, 12);  --  correct?

      planeAxis : constant coord_3d := coord_3d'val (vc.node.planeAxis);

      --  technically dot product equation but only single axis of each
      --  element involved (normal vector, plane distance)?
      plane : constant float :=
        (worldMax (planeAxis) - worldMin (planeAxis))  --  distance/width/length  ?normal vector of plane surface?
          * scale
          * float (plane_Distance)  --  distance (from origin?) to (center?) point on plane
          + worldMin (planeAxis);


      next_index : unsigned_32;

   begin
      if r_count = 49 then
         return vc.leaf;  -- possible not valid data
      end if;

      if vc.leaf.isNonLeaf = 0 then
         --put_line ("leaf skip");
      --put_line ("leaf reached");
         --goto skip_leaf;
      --put_line (vc.leaf.compressionScheme'image);
         return vc.leaf;
      end if;


      trace (trace_index) :=
        (vc => vc,
         node_index => vc_index,
         plane => plane,
         others => <>);


--       put_line (axis_str (vc.node.planeAxis).all & " world min - world min" &
--         float'image ((worldMax (vc.node.planeAxis) - worldMin (vc.node.planeAxis))));
-- 
--       put_line (axis_str (vc.node.planeAxis).all & " scaled world min - world min" &
--         float'image (scale * (worldMax (vc.node.planeAxis) - worldMin (vc.node.planeAxis))));

--       put_line ("front index:" & vc.node.frontIndex'image);
--       put_line ("back index:" & back_index'image);
--       put_line ("plane axis:" & vc.node.planeAxis'image & " - " & axis_str (vc.node.planeAxis).all);
--       put_line ("plane distance int:" & plane_distance'image);
--       put_line ("plane distance:" & float (plane_distance)'image);

      declare
         p_pos_sr_4 : v4t := p_pos;
         p_pos_sl_c : v4t := p_pos;

         p_pos_sr_8 : v4t := p_pos;
         p_pos_sl_8 : v4t := p_pos;

         --test : v4t := p_pos_sr_4 * p_pos_sr_4;

         sr_4_uv : v4t := unit_vectors (vc.node.planeAxis);
         sl_c_uv : v4t := unit_vectors (vc.node.planeAxis);  --  12

         sr_8_uv : v4t := unit_vectors (vc.node.planeAxis);
         sl_8_uv : v4t := unit_vectors (vc.node.planeAxis);

         p_pos_copy : v4t;

      begin

--          p_pos :=
--            (p_pos (0) * unit_vectors (vc.node.planeAxis, 0),
--             p_pos (1) * unit_vectors (vc.node.planeAxis, 1),
--             p_pos (2) * unit_vectors (vc.node.planeAxis, 2));

         --mulps_test (unit_vectors (vc.node.planeAxis), v2_out => p_pos);
         p_pos_copy := ia32_mulps (unit_vectors (vc.node.planeAxis), p_pos);
       --p_pos_copy := unit_vectors (vc.node.planeAxis) * p_pos;
--          p_pos (1) := p_pos (1) * unit_vectors (vc.node.planeAxis) (1);  --  x
--          p_pos (2) := p_pos (2) * unit_vectors (vc.node.planeAxis) (2);  --  y
--          p_pos (3) := p_pos (3) * unit_vectors (vc.node.planeAxis) (3);  --  z
--          p_pos (4) := p_pos (4) * unit_vectors (vc.node.planeAxis) (4);  --  radius (multiply by last 0 in unit vector always makes not used?)


         sr_4_uv := psrldq (sr_4_uv, shift_4_bytes);
         sl_c_uv := pslldq (sl_c_uv, shift_12_bytes);  --  0xc

         sl_c_uv := por_128 (sr_4_uv, sl_c_uv);

         p_pos_sr_4 := psrldq (p_pos_sr_4, shift_4_bytes);
         p_pos_sl_c := pslldq (p_pos_sl_c, shift_12_bytes);  --  0xc

         p_pos_sl_c := por_128 (p_pos_sr_4, p_pos_sl_c);


         --mulps_test (sl_c_uv, v2_out => p_pos_sl_c);
         p_pos_sl_c := ia32_mulps (sl_c_uv, p_pos_sl_c);

--          put_line ("before add             " & v4t_image (p_pos_sl_c));

         --addps_test (p_pos, v2_out => p_pos_sl_c);  --  p_pos_sl_c used...
         p_pos_sl_c := ia32_addps (p_pos, p_pos_sl_c);

--          put_line ("original               " & v4t_image (p_pos));
--          put_line ("after multiply and add " & v4t_image (p_pos_sl_c));


         sr_8_uv := psrldq (sr_8_uv, shift_8_bytes);
         sl_8_uv := pslldq (sl_8_uv, shift_8_bytes);
         sl_8_uv := por_128 (sr_8_uv, sl_8_uv);

         p_pos_sr_8 := psrldq (p_pos_sr_8, shift_8_bytes);
         p_pos_sl_8 := pslldq (p_pos_sl_8, shift_8_bytes);
         p_pos_sl_8 := por_128 (p_pos_sr_8, p_pos_sl_8);

         --mulps_test (sl_8_uv, v2_out => p_pos_sl_8);
         p_pos_sl_8 := ia32_mulps (sl_8_uv, p_pos_sl_8);
         --addps_test (p_pos_sl_c, v2_out => p_pos_sl_8);  --  here
         p_pos_sl_8 := ia32_addps (p_pos_sl_c, p_pos_sl_8);

         --put_line (v4t_image (p_pos_sl_8));  --  print first element



--   once getting past certain position in map on certain axis something
--   goes wrong
--
--     - scale constant?

--     - world bound scaled?

--     - scale of player pos?


         vc_last_50 (r_count) := (vc, plane_distance, back_index, p_pos, ' ');



         if p_pos_sl_8 (1) >= plane then
         --  infront of plane?
            --put_line ("infront of plane?");
            --vc.node.frontIndex

            next_index := ui32 (vc.node.frontIndex);
            --next_index := back_Index;

            vc_last_50 (r_count).side := 'f';
            trace (trace_index).side := 'f';

         else
         --  behind plane?
            --put_line ("behind plane?");

            next_index := ui32 (back_Index);
            --next_index := vc.node.frontIndex;

            vc_last_50 (r_count).side := 'b';
            trace (trace_index).side := 'b';

         end if;

        -- put_line ("vc byte offset:" & positive'image (vc_index * 6));
--          put_line ("front index offset:" & unsigned_16 (vc.node.frontIndex + (vc.node.frontIndex * 2))'image);
--          put_line ("back index offset:" & unsigned_16 (back_index + (back_index * 2))'image);
-- 
-- 
--          put_line ("plane (location?):" & plane'image);
--          put_line ("unit vector and position value:" & p_pos_sl_8 (1)'image);
      end;

      --return;

      r_count := r_count + 1;

      trace_index := trace_index + 1;

      << skip_leaf >>

      --put_line ("vc index:" & vc_index'image);

      --exit when ui32 (vc_index) = num_view_cells;

      --new_line (2);

      --put_line (parent'length'image);

      --  may not work
--       if vc'address = vc_union_test (unsigned_16 (num_view_cells))'address then
--          raise no_leaf_error with "reached end of view cell list before finding leaf cell";
--       end if;

--  test
--       if ui32 (parent'first) >= num_view_cells then
--          raise no_leaf_error with "reached end of view cell list before finding leaf cell";
--       end if;

      --put_line ("next index: " & next_index'image);

      return findViewCell
        (vc => view_cells (next_index + 1),  --  adjust for 1 based array? (looping forever when reaching first x axis plane)
         p_pos  => p_pos,                    --  txt and obj need opposite (- 1)
         vc_index => next_index);


   end findViewCell;




   --   obj

   --  printf?
   function v_str (x, y, z : in float) return string
     is ("v " & x'image & " " & y'image & " " & z'image) with inline;


   function f_str (v1, v2, v3, v4 : positive) return string
     is ("f " & v1'image & v2'image & v3'image & v4'image) with inline;

   --  ! rectangular cuboid, box?
   procedure cube
     (fd      : in file_type;
      v_index : in out positive;
      group   : in string;
      min     : in point3;
      max     : in point3)
   is
     --  generic min, max?
      y_coord : float;

      --  array of vertices and index?
   begin
      y_coord := max (y);  --  top
      for i in 1 .. 2 loop
         --  circular order
         put_line (fd, v_str (min (x), y_coord, max (z))); --  1, b 5 back left
         put_line (fd, v_str (max (x), y_coord, max (z))); --  2, b 6 back right
         put_line (fd, v_str (max (x), y_coord, min (z))); --  3, b 7 front right
         put_line (fd, v_str (min (x), y_coord, min (z))); --  4, b 8 front left

         y_coord := min (y);  --  bottom
      end loop;

      v_index := v_index + 8; --  starts at 1?

      put_line (fd, "g " & group);
      put_line (fd, "s 0");

      --  top face
      --  t back left, t back right, t front right, t front left
      put_line (fd, f_str (v_index - 8, v_index - 7, v_index - 6, v_index - 5));

      --  back face
      --  t back left, t back right, b back right, b back left
      put_line (fd, f_str (v_index - 8, v_index - 7, v_index - 3, v_index - 4));

      --  right face
      --  top front right, top back right, b back right, b front right
      put_line (fd, f_str (v_index - 6, v_index - 7, v_index - 3, v_index - 2));

      --  front face
      --  t front left, t front right, b front right, b front left
      put_line (fd, f_str (v_index - 5, v_index - 6, v_index - 2, v_index - 1));

      --  left face
      --  t front left, t back left, b back left, b front left
      put_line (fd, f_str (v_index - 5, v_index - 8, v_index - 4, v_index - 1));

      --  bottom face
      --  b back left, b back right, b front right, b front left
      put_line (fd, f_str (v_index - 4, v_index - 3, v_index - 2, v_index - 1));

   end cube;




   procedure on_to_obj (vis_stream : sio.stream_access) is

      on : object_node;
      s_item : static_item;

      obj_fd : file_type;
      v_index : positive := 1;

--    type Object_Node is record
--       min : float_array (1 .. 3);  --  0x0
--       pvsByteOffset : unsigned_16; --  0xC, offset to byte in uc pvs data for ObjectNode
--       pvsBitOffset : unsigned_16;  --  0xE, offset to bit in byte of uc pvs data?
--       max : float_array (1 .. 3);  --  0x10
--       index : unsigned_16;   --  0x1c, index of ObjectNode in vis file, not related index of track blocks array? but last index is usually same as last index of track block array (differs per game)? can be smaller but never over? i.e. 599 in dirt rally */
--       numStaticObjects : unsigned_16;  --  0x1e
--       nextOffset : unsigned_32;  --  0x20
--       nextSize : unsigned_16;  --  0x24
--       depth : unsigned_16;   -- 0x26,  z depth in physical space of world? depth in tree data structure of object nodes, but not actually a tree? used in calcVisibleSet (likely others), compared with depth of previous ObjNode in relation to whether previous was visible or not. bounds of static item used in TBD calculation and placed in depth field of item in VisibleSet item list. depth relative to? world origin, center (from world min and max bounds)? statically determined in advanced so cannot be based on player position? */
--       pad : ui32_array (1 .. 2);  --  0x28
--    end record  --  size 0x30
-- 
--    type Static_Item is record
--       boundsMin : float_array (1 .. 3);
--       layer : unsigned_32;
--       boundsMax : float_array (1 .. 3);
--       id : unsigned_32;
--    end record


   begin
      create (obj_fd, out_file, "object_nodes.obj");

      for o_index in 0 .. vis_header.numObjectTreeNodes - 1 loop
         object_node'read (vis_stream, on);

         put_line (obj_fd, "# objectN_" & fstr.trim (on.index'image, str.left));
         put_line (obj_fd, "#   pvsByteOffset" & on.pvsByteOffset'image);
         put_line (obj_fd, "#   pvsBitOffset" & on.pvsBitOffset'image);
         put_line (obj_fd, "#   numStaticObjects" & on.numStaticObjects'image);
         put_line (obj_fd, "#   (quad tree) depth" & on.depth'image);

         cube (obj_fd, v_index,
           group => "objectN_" & fstr.trim (on.index'image, str.left),
           min   => oN.min,
           max   => oN.max);

         --put_line ("static items " & oN.numStaticObjects'image);

         if oN.numStaticObjects = 0 then
            goto no_items;
         end if;

         for i_index in 0 .. on.numStaticObjects - 1 loop
            static_item'read (vis_stream, s_item);

            --put_line ("layer " & s_item.layer'image);

            cube (obj_fd, v_index,
              group => "sItem_"
                & static_layer_name'val (s_item.layer)'image & "_"
                & fstr.trim (s_item.id'image, str.left),
              min   => s_item.boundsMin,
              max   => s_item.boundsMax);

         end loop;

         <<no_items>>

      end loop;

      close (obj_fd);
   end on_to_obj;



   --  rename
   procedure read_debug_view_cell_info
     (vis_stream : sio.stream_access)  --  for previous 'only_leafs' arg: skip_empty_cells, skip_nodes?
   is
--       x : constant := 1;
--       y : constant := 2;
--       z : constant := 3;

      index : natural := 0;

      debug_vc_info : debug_view_cell_info;
      debug_vc_sample : debug_view_cell_pvs_sample;

      --  without samples
      wos_obj_fd : file_type;
      wos_v_index : positive := 1;
      wos_info_index : natural := 0;

      --  with samples
      ws_obj_fd : file_type;
      ws_v_index : positive := 1;
      ws_info_index : natural := 0;

--       c_obj_fd : file_type;
--       c_v_index : positive := 1;

   begin

      create (wos_obj_fd, out_file, "debug_vc_info_without_samples.obj");
      create (ws_obj_fd, out_file, "debug_vc_info_with_samples.obj");
      --create (c_obj_fd, out_file, "debug_vc_info_combined.obj");

      --  same number of vc and debug vc.
      --  is 0 based (< numViewCells)
      for info_index in 0 .. vis_header.numViewCells - 1 loop
         debug_view_cell_info'read (vis_stream, debug_vc_info);

--          put_line ("ada index" & info_index'image);
--          put_line ("dvc info id" & debug_vc_info.id'image);
--          put_line ("dvc info samples" & debug_vc_info.numSamples'image);
--          new_line;

--  #############################################################################
-- ??
--  exiting 'less -Si' when printing many lines to stdout allows program to be
--  closed before exiting naturally?
--
--  not scrolling to end of 'less -Si' output causes writes to fds other
--  than std* to not complete?

--          cube (c_obj_fd, c_v_index,
--            prefix => "g d_vc_wos_",
--            min    => debug_vc_info.min,
--            max    => debug_vc_info.max);

         if debug_vc_info.numSamples = 0 then

            cube (wos_obj_fd, wos_v_index,
              group => "g d_vc_wos_" & fstr.trim (index'image, str.left),
              min   => debug_vc_info.min,
              max   => debug_vc_info.max);

            wos_info_index := wos_info_index + 1;

         elsif debug_vc_info.numSamples > 0 then  --  only 9 seen so far

            cube (ws_obj_fd, ws_v_index,
              group => "g d_vc_ws_" & fstr.trim (index'image, str.left),
              min   => debug_vc_info.min,
              max   => debug_vc_info.max);

         --  !  make cell and sample in same group

            for sample_index in 0 .. debug_vc_info.numSamples - 1 loop

               debug_view_cell_pvs_sample'read (vis_stream, debug_vc_sample);

               --  only position from sample is valuable, other data doesnt
               --  appear to be valid

               --  sample point visual is 3 x 3 cube centered at position of sample
               cube (ws_obj_fd, ws_v_index,
                 group => "g d_sample_point_"
                   & fstr.trim (sample_index'image, str.left),

                 min   => (x => debug_vc_sample.position (x) - 1.5,
                           y => debug_vc_sample.position (y) - 1.5,
                           z => debug_vc_sample.position (z) - 1.5),

                 max   => (x => debug_vc_sample.position (x) + 1.5,
                           y => debug_vc_sample.position (y) + 1.5,
                           z => debug_vc_sample.position (z) + 1.5));

--             put_line ("visible object nodes" & debug_vc_sample.numVisibleNodes'image);
--             put_line ("visible static items" & debug_vc_sample.numVisibleObjects'image);

            end loop;

            ws_info_index := ws_info_index + 1;

         end if;

         index := index +1;

      end loop;

      put_line ("debug vc info entries with samples:" & ws_info_index'image);
      put_line ("debug vc info entries withOUT samples:" & wos_info_index'image);
      put_line ("total debug vc info (should match view cell count from header):"
        & index'image);

      close (wos_obj_fd);
      close (ws_obj_fd);

   end read_debug_view_cell_info;



   procedure nodes_to_obj (no_duplicates: boolean) is

--       x : constant := 0;
--       y : constant := 1;
--       z : constant := 2;
      invalid : constant := 3;
      obj_file : file_type;

      v_index : natural := 0;

      plane_distance : unsigned_32;
      plane : float;

      plane_count : array (unsigned_16 range 0 .. 2) of unsigned_16 :=
        (0, 0, 0);

      type ui32_array is array (natural range <>) of unsigned_32;

      --  count number of planes for each axis when reading?
      --  container?
      distances : array (unsigned_16 range 0 .. 2) of
        ui32_array (0 .. natural (vis_header.numViewCells)) :=
          (0 .. 2  => (others => 0));  --  initialize to 0

      vc : view_cell_union;


      function is_duplicate return boolean is
      begin
         for existing_dist of distances (vc.node.planeAxis) loop
            if existing_dist = plane_distance then
               return true;
            end if;
         end loop;
         return false;
      end is_duplicate;

      duplicate_count : natural := 0;
      planeAxis : coord_3d;

   begin

      if no_duplicates then
         create (obj_file, out_file, "vc_nodes_without_duplicates.obj");
      else
         create (obj_file, out_file, "vc_nodes_with_duplicates.obj");
      end if;

      for vc_index in view_cells'first .. vis_header.numViewCells loop

         vc := view_cells (vc_index);

         if vc.leaf.isNonLeaf = 0 then
            goto skip_leaf;
         end if;

         plane_distance := ui32 (vc.node.planeDistanceBottomBits)
           or shift_left (ui32 (vc.node.planeDistanceTopBits), 16);

         --  ! duplicates in separate obj file or group?
         if no_duplicates and then is_duplicate then
            --put_line ("skipping duplicate " & axis_str (vc.node.planeAxis).all & " plane");
            duplicate_count := duplicate_count + 1;
            goto skip_duplicate;
         end if;

         distances (vc.node.planeAxis) (integer (vc_index - 1)) := plane_distance;

         planeAxis := coord_3d'val (vc.node.planeAxis);

         plane := (worldMax (planeAxis) - worldMin (planeAxis))
           * float (plane_distance)
           * scale
           + worldMin (planeAxis);

         case planeAxis is

            --  verticies must be written in circular, outer order when
            --  face is quadrilateral to prevent self overlap, crossover

            --  printf?

            when x =>  -- plane in x (split x)
               --  front bottom
               put_line (obj_file, v_str (plane, worldMin (y), worldMin (z)));

               --  front top
               put_line (obj_file, v_str (plane, worldMax (y), worldMin (z)));

               --  back top
               put_line (obj_file, v_str (plane, worldMax (y), worldMax (z)));

               --  back bottom
               put_line (obj_file, v_str (plane, worldMin (y), worldMax (z)));

            when y =>  -- plane in y (split y)
               --  front left
               put_line (obj_file, v_str (worldMin (x), plane, worldMin (z)));

               --  front right
               put_line (obj_file, v_str (worldMax (x), plane, worldMin (z)));

               --  back right
               put_line (obj_file, v_str (worldMax (x), plane, worldMax (z)));

               --  back left
               put_line (obj_file, v_str (worldMin (x), plane, worldMax (z)));


            when z =>  -- plane in z along face normal? (split z)
               --  top left
               put_line (obj_file, v_str (worldMin (x), worldMax (y), plane));

               --  top right
               put_line (obj_file, v_str (worldMax (x), worldMax (y), plane));

               --  bottom right
               put_line (obj_file, v_str (worldMax (x), worldMin (y), plane));

               --  bottom left
               put_line (obj_file, v_str (worldMin (x), worldMin (y), plane));

--             when invalid =>  -- invalid
--                put_line ("WARNING invalid axis in vc node when writing obj");
         end case;

         plane_count (vc.node.planeAxis) :=
           plane_count (vc.node.planeAxis) + 1;

         declare
            pc_str : constant string := plane_count (vc.node.planeAxis)'image;
         begin
            put_line (obj_file, "g plane_"
              & coord_3d'val (vc.node.planeAxis)'image
              & "_" & pc_str (2 .. pc_str'last));
         end;

         put_line (obj_file, "s 0");  --  smoothing group for face?

         v_index := v_index + 4;

         put (obj_file, "f ");
         for index in v_index - 3 .. v_index loop
            put (obj_file, index'image);
         end loop;
         new_line (obj_file);

        <<skip_leaf>>
        <<skip_duplicate>>

      end loop;

      if no_duplicates then
         put_line ("skipped" & duplicate_count'image & " duplicate planes");
      end if;

      close (obj_file);
   end nodes_to_obj;


   procedure vc_to_txt is
      txt_file : file_type;
      fd : file_type renames txt_file;

      plane_distance : unsigned_32;
      back_index : unsigned_16;

      pvs_offset : unsigned_32;

      --node_index : positive := 1;
      --leaf_index : positive := 1;

      vc : view_cell_union;

      planeAxis : coord_3d;

   begin
      --if dir.exists ("vc_nodes.txt")
      create (fd, out_file, "vc_info.txt");
      --reset (txt_file);
      put_line (fd, "header");


      put_line (fd, "version (raw int to str): " & vis_header.version'image);
      put_line (fd, "num total view cells:" & vis_header.numViewCells'image);
      put_line (fd, "num leaf view cells:" & vis_header.numLeafViewCells'image);

      put_line (fd, "num node view cells (not in header, always almost "
        & "half/leaf count - 1?):"
        & unsigned_32'image
          (vis_header.numViewCells - vis_header.numLeafViewCells));

      put_line (fd, "num object tree nodes (ObjectNode) (should be same as length of statically sized TrackBlock array (m_blocks) in TrackManager class?):" &
        vis_header.numObjectTreeNodes'image);

      put_line (fd, "number of bytes for (uncompressed) PVS data per view cell:" &
        vis_header.pvsBytesPerViewCell'image);

      put_line (fd, "view cell list offset (should always be 128):" &
        vis_header.viewCellListStart'image);

      put_line (fd, "pvs data list offset (always after vc list):" &
        vis_header.pvsListStart'image);

      put_line (fd, "object list (ObjectNode and StaticItem) offset "
        & "(always after pvs data list):"
        & vis_header.objectListStart'image);

      put_line (fd, "worldMin (viewCellBoundsMin)");
      for axis in worldMin'range loop
        put_line (fd, axis'image  & " " & worldMin (axis)'image);
      end loop;

      put_line (fd, "worldMax (viewCellBoundsMax)");
      for axis in worldMax'range loop
        put_line (fd, axis'image & " " & worldMax (axis)'image);
      end loop;

      put_line (fd, "debug view cell info offset (not used in retail, sometimes"
        & " left if file):"
        & vis_header.debugViewCellsStart'image);

      put_line (fd, "debug PVS blockers offset (never seen with value, always 0?):"
        & vis_header.debugPVSBlockersStart'image);

      put_line (fd, "number of items per static layer:");
      for sl_name in static_layer_name'range loop
         put_line (fd, "  - " & sl_name'image & ":"
           & vis_header.numObjectsInStaticLayer (sl_name)'image);
      end loop;

      new_line (fd, 2);

      put_line (fd, "#####################################");
      put_line (fd, "view cell list section:");

      for vc_index in view_cells'first .. vis_header.numViewCells loop

         vc := view_cells (vc_index);

         if vc.leaf.isNonLeaf /= 0 then
         --  node

            put_line (fd, "vc index (node):" & ui32'image (vc_index - 1));  --  temp, change base of array to 0?
            new_line (fd);

            planeAxis := coord_3d'val (vc.node.planeAxis);
            put_line (fd, "plane axis: " & planeAxis'image);

            plane_distance := ui32 (vc.node.planeDistanceBottomBits) or
              shift_left (ui32 (vc.node.planeDistanceTopBits), 16);
            --  top bits must be casted before shift

            put_line (fd, "raw plane distance" & plane_distance'image);

            put_line (fd, "plane distance scaled?" &
              float'image (scale * float (plane_distance)));

            put_line (fd, "plane location/distance in game?" &
              float'image ((worldMax (planeAxis) - worldMin (planeAxis))
                * float (plane_distance)
                * scale
                + worldMin (planeAxis)));

            put_line (fd, "front index:" & vc.node.frontIndex'image);

            back_index := vc.node.backIndexLowerBits or
              shift_left (vc.node.backIndexTopBit, 12);  --  correct?

            put_line (fd, "back_index:" & back_index'image);
            new_line (fd, 2);

            --node_index := node_index + 1;

         else
         --  leaf

            put_line (fd, "vc index (leaf):" & ui32'image (vc_index - 1));

            pvs_offset := ui32 (vc.leaf.pvsOffsetLowerBits) or
              shift_left (ui32 (vc.leaf.pvsOffsetTopBits), 16);

            put_line (fd, "pvs offset:" & pvs_offset'image);
            put_line (fd, "pvs data compression scheme:" & vc.leaf.compressionScheme'image);
            --put_line (txt_file, );

            new_line (fd, 2);

            --leaf_index := leaf_index + 1;
         end if;
      end loop;



      close (fd);
   end vc_to_txt;



   procedure fake_vis is

      --  pvs list
      --  bit_array, string?
--       pvs_byte : bit_list := (0 => true, 1 .. 7 => false);

      --  16 bytes made many more track blocks visible
      --
      --  600 nothing visible
      --
      --  32 bytes more things visible than 16 bytes?
      --
      --  64, 128 and 224 bytes no visible difference?
      --  limit for number of pvs bytes for each object node?
      --
      --  conclusion of above: must be multiple of 128 bits, 16 bytes

      --  ! there is bit for object node too even if no static items

      --  !  only 12 (0xc) track blocks being added to visibleSet in game

      type byte_array is array (unsigned_32 range <>) of unsigned_8;
      pvs_bytes : constant byte_array := (1 .. 4 => 255, 5 => 254, 6 .. 16 => 0);  --  ! 38 bits, 254 no change from 252?

      padded_size : ui32 := ((pvs_bytes'size + 127) and 127) xor 127;

      faked_header : header :=
         (version => 4,  -- game does check this for specific value, dirt showdown uses 5, others?   --  unsigned_32;  --  0x0
         numViewCells => 0, -- ok?    -- unsigned_32;  --  0x4
         numLeafViewCells => 1, -- unsigned_32;  -- 0x8
         numObjectTreeNodes => 1,  -- unsigned_32;  --  0xc
         pvsBytesPerViewCell => pvs_bytes'length,  -- unsigned_32;  --  0x10
         viewCellListStart => header'size / 8, --  always 128, same as header size  -- unsigned_32;  --  0x14
         pvsListStart => (header'size + view_cell_leaf'size) / 8,  --  unsigned_32;  --  0x18
         objectListStart => (header'size + view_cell_leaf'size) / 8 + pvs_bytes'length,  -- unsigned_32;  --  0x1c
         viewCellBoundsMin => (x => 0.0, y => 0.0, z => 0.0), --  can be anything?    -- float_array (0 .. 2);  --  0x20

         --  valid offset in file with actual data, but never used in retail game.
         --  same number of debugViewCellInfo entries as numViewCells
         debugViewCellsStart => 0,  -- unsigned_32;  --  0x2c

         viewCellBoundsMax => (x => 0.0, y => 0.0, z => 0.0),  -- float_array (0 .. 2);  --  0x30

         --  only seen null/0 so far, may not ever have been in shipping vis file
         --  (would be 5th/last 'section' of file if present)
         debugPVSBlockersStart => 0,  -- unsigned_32;  --  0x3c,

         numObjectsInStaticLayer => (track_block => 38, others => 0));  -- static_layer_item_num;  --  0x40  ..  0x80 (128)


      --  header + single leaf cell
      pvs_offset : constant ui32 := (faked_header'size + view_cell_leaf'size / 8);

      vc_leaf : view_cell_leaf := (
         isNonLeaf          => 0, -- unsigned_16;
         --  !  offset is absolute from beginning of file
         pvsOffsetLowerBits => ui16 (pvs_offset and 16#FFFF#), -- unsigned_16;
         pvsOffsetTopBits   => ui8 (pvs_offset and 16#FF0000#), --  always 0 for now? -- unsigned_8;
         compressionScheme  => none'enum_rep); --  memcpy directly from file -- unsigned_8;



      --pragma compile_time_error (pvs_byte'size / 8 /= 1, "pvs_byte not 1 byte");



        --  ! setting object node bounds to large size (like size of track) fixes
        --  dynamic objects/entities being invisible/culled (are always in
        --  bounds of object that is visible?)


      --  game will correctly handle first objectNode also being last?
      object_nd : object_node :=

         --  !  objectN 0 bounds
        (min =>  (x => -1.66832E+03, y => -5.18221E+01, z => -1.49473E+03),  --  float_array (1 .. 3);  --  0x0

         pvsByteOffset => 0, --  first byte (offset 0)  --  unsigned_16; --  0xC, offset to byte in uc pvs data for ObjectNode

         pvsBitOffset  => 0, --  first first (offset 0)  --  unsigned_16;  --  0xE, offset to bit in byte of uc pvs data?

         max => (x => 1.74613E+03, y => 1.05663E+02, z => 1.68062E+03),  -- float_array (1 .. 3);  --  0x10
         index => 0,  --  unsigned_16;   --  0x1c, index of ObjectNode in vis file, not related index of track blocks array? but last index is usually same as last index of track block array (differs per game)? can be smaller but never over? i.e. 599 in dirt rally */
         numStaticObjects => 38,  -- unsigned_16;  --  0x1e
         nextOffset => 0, --  first object node is also last  -- unsigned_32;  --  0x20
         nextSize => 0,  -- unsigned_16;  --  0x24

         --  ! depth not applicable with only 1 object node?
         depth => 0, -- must recheck    --  unsigned_16;   -- 0x26,  z depth in physical space of world? depth in tree data structure of object nodes, but not actually a tree? used in calcVisibleSet (likely others), compared with depth of previous ObjNode in relation to whether previous was visible or not. bounds of static item used in TBD calculation and placed in depth field of item in VisibleSet item list. depth relative to? world origin, center (from world min and max bounds)? statically determined in advanced so cannot be based on player position? */
         pad => (1 .. 2 => 0));  --  0x28
         --  size 0x30



      --  if static item bounds same as objectN bounds (at bounds of first)
      --  then arent determined visible by visibility test?

      --  bounds of track_block 33 3 track blocks visible

      --  setting bounds of each item for track block to slightly increasing
      --  value no change

      --  making each bound smaller increasing by 1.0 each item, making bounds
      --  smaller by 5.0 each time no change

      --  !!!  pvs bytes was problem, 
      --  !!!  increasing pvs_bytes to 8 seems to have been problem?
      --         - using 4 (32 bits) same result?

      --  ! using bounds of first object node with (correct?) pvs made
      --    19 items visible (parts of background, highest), but made other things
      --    disappear?

      --  ! track_block 33 bounds
      s_item : Static_Item :=
         (boundsMin => (x => -1.66832E+03, y => -5.18221E+01, z => -1.49473E+03), --(x => -5.60378E+02, y => -1.84331E+01, z => -4.70735E+02),  -- float_array (1 .. 3);
         layer => track_block'enum_rep,  -- unsigned_32
         boundsMax =>   (x => 1.74613E+03, y => 1.05663E+02, z => 1.68062E+03), --(x => 6.23622E+02, y => 3.14700E+01, z => 6.81265E+02),  -- float_array (1 .. 3);
         id => 0); --  ! may require testing  -- unsigned_32;

      static_items : array (unsigned_16 range 0 .. object_nd.numStaticObjects - 1) of
        static_item := (0 .. object_nd.numStaticObjects - 1 => s_item);
      --  !  only track blocks

      size_of_objects : constant natural :=
        (faked_header'size +
         vc_leaf'size +
         pvs_bytes'size +
         object_nd'size +
         static_items'size) / 8; --  bytes

      vis_fd : sio.file_type;
      vis_stream : sio.stream_access;

      --  same in stream
--       te_float : ieee_float_32 := -10.0;
--       a_float : float := -10.0;

      b_i : float := 1.0;

   begin
      if pvs_bytes'size mod 128 /= 0 then
         put_line ("p bits" & padded_size'image);
         put_line ("p bytes" & ui32'image (padded_size / 8));
         declare
            p_b : byte_array := pvs_bytes & (1 .. (padded_size / 8) => 0);
         begin
            put_line (ui32'image (p_b'size / 8));
         end;
      else
         null;
         --put_line ("padding nn");
      end if;


      --  ! can also make game use dynamic/run time visibility test for static item?

      sio.create (vis_fd, sio.out_file, "f_track.vis");
      vis_Stream := sio.stream (vis_fd);

--       ieee_float_32'write (vis_stream, te_float);
--       float'write (vis_stream, a_float);

      header'write (vis_stream, faked_header);

      view_cell_leaf'write (vis_stream, vc_leaf);

      --  ! doesnt work with streams
      --bit_list'write (vis_stream, pvs_byte);
      for byte of pvs_bytes loop
         unsigned_8'write (vis_stream, byte);
      end loop;

      object_Node'write (vis_stream, object_nd);

      for index in static_items'range loop
         static_items (index).id := ui32 (index);
         declare
            boundsMin : point3 renames static_items (index).boundsMin;
            boundsMax : point3 renames static_items (index).boundsmax;
         begin
            for axis in boundsMin'range loop
               boundsMin (axis) := boundsMin (axis) - b_i;
               boundsMax (axis) := boundsMax (axis) + b_i;
            end loop;
         end;
         Static_item'write (vis_stream, static_items (index));
         b_i := b_i + 2.5;
      end loop;


      put_line ("vc leaf pvs offset:" & pvs_offset'image);
      put_line ("unpack vc leaf pvs offset:" & ui32'image
        (shift_left (ui32 (vc_leaf.pvsOffsetTopBits), 16) or
                     ui32 (vc_leaf.pvsOffsetLowerBits))
      );

      put_line ("size of all data written to stream" & size_of_objects'image);
      sio.flush (vis_fd);
      put_line ("size of file" & sio.size (vis_fd)'image);

      sio.close (vis_fd);
   end fake_vis;






   type xy_cycle is mod 1;

   type location is (root, left, right);

   type td_node is record
      position : float;
      n_location : location;
      --left : positive := 1;
      --right : positive := 1;
      is_end : boolean := false;
   end record;


   type td_node_array is array (positive range <>) of td_node;


   td_r_count : natural := 0;


   function td (min : float; max : float; n_location : location; level : natural) return td_node_array is
      width : float;
      middle : float;
   begin

      td_r_count := td_r_count + 1;

      if level <= 0 then
         return (1 => (position => -1.0, n_location => n_location, is_end => true));
      end if;

      put_line (level'image);
      put_line ("min: " & min'image & ", max: " & max'image);

      width := (max - min);
      middle := (width / 2.0) + min;
      put_line ("width " & width'image);
      put_line ("mid " & middle'image);

      return td_node_array'(1 => (position => middle, n_location => n_location, is_end => false))
        & td (min => min, max => middle, n_location => location'(left), level => level - 1) --td (min => , max => , depth => depth - 1, nodes => td)
        & td (min => middle, max => max, n_location => location'(right), level => level - 1);
   end td;


   Bind_Address : constant gnat.sockets.Sock_Addr_Type :=
     (Family => gnat.sockets.Family_Inet,
      Addr   => gnat.sockets.Loopback_Inet_Addr,
      Port   => 20777);

   NL : constant String := ascii.lf & ascii.cr;

   udp_sock : gnat.sockets.socket_type;
   udp_stream : aliased udp_streams.udp_stream_type (1024);

   non_blocking_request : gnat.sockets.request_type :=
     (Name => gnat.sockets.Non_Blocking_IO, enabled => true);

   td_1 : ego_telemetry.telemetry_format_1;

   afplay_arg : constant os.argument_list :=
     (1 => os.string_access (+"/Users/oswald/64item.wav"));

   afplay_pid : os.process_id;


   vis_file : sio.file_type;
   vis_stream : sio.stream_access;



   plane_distance : unsigned_32;
   back_index : unsigned_16;
   pd_tb : unsigned_32;


   pvs_offset : unsigned_32;
   last_pvs_offset : unsigned_32 := 0;


   pvs_list_start : unsigned_32;


   t_v : v4t := (1.0, 1.0, 1.0, 1.0);

   --p_pos : point3 := (54.54, 2.414, 421.4451);
   p_pos : v4t := (54.54, 2.414, 421.4451, 10.0);  --  last element radius of sphere

   vc_leaf : view_cell_leaf;

   use type os.process_id;

   vb : system.address;


begin

   --put_line ("bl" & bit_list'size'image);

   --put_line ("b" & v4t_image (in_vec.float_view));
   --put_line ("a" & v4t_image (out_vec.float_view));
   --t_v := to_v4t (ia32_pslldq (to_m128 (t_v), 4 * 8));
   --t_v := pslldq (t_v, shift_4_bytes);

--    put_line (t_v (1)'image & ascii.lf &
--      t_v (2)'image & ascii.lf &
--      t_v (3)'image & ascii.lf &
--      t_v (4)'image);


   if cli.argument_count < 1 then
      put_line ("first arg is file or -f_vis");
      return; --cli.failure;

   elsif cli.argument (1) = "-f_vis" then
      fake_vis;
      return;

   elsif not dir.exists (cli.argument (1)) or else
             dir.kind   (cli.argument (1)) = dir.directory
   then
      put_line ("file """ & cli.argument (1) & """ does not exist");
      return;
   end if;


   sio.open (vis_file, sio.in_file, cli.argument (1));

--    vb := read_entire_file (cli.argument (1));
--    declare
--       vh_2 : header with address => vb;
--       next_vcdi_offset : integer := 0;
--    begin
--       put_line (vh_2.numViewCells'image);
-- 
--       for i in 1 .. vh_2.numViewCells loop
--          null;
--       end loop;
-- 
--       sys.memory.free (vb);
--    end;
-- 

   vis_stream := sio.stream (vis_file);

   header'read (vis_stream, vis_header);

--    put_line ("worldMin (viewCellBoundsMin)");
--    for axis in worldMin'range loop
--      put_line (axis_str (axis).all & " " & worldMin (axis)'image);
--    end loop;
-- 
--    put_line ("worldMax (viewCellBoundsMax)");
--    for axis in worldMax'range loop
--      put_line (axis_str (axis).all & " " & worldMax (axis)'image);
--    end loop;
-- 
--    declare
--       nr : td_node_array := td (worldMin (0), worldMax (0), location'(root), 8);
--    begin
--       for index in nr'range loop
--          put_line ("n index " & index'image);
--          put_line ("position " & nr (index).position'image);
--          put_line ("n_location " & nr (index).n_location'image);
--          put_line ("is_end " & nr (index).is_end'image);
--          new_line (2);
--       end loop;
--    end;
-- 
--    put_line (td_r_count'image);
-- 
-- 
-- 
--    return;


   put_line ("vc list start + 1" & ui32'image (vis_header.viewCellListStart + 1));
   put_line ("index after reading header" & sio.index (vis_file)'image);
   put_line ("view cell count:" & vis_header.numViewCells'image);
   put_line ("view cell leaf count:" & vis_header.numLeafViewCells'image);
   put_line ("view cell node count (not part of file):" & ui32'image
     (vis_header.numViewCells - vis_header.numLeafViewCells));

   if vis_header.numViewCells > ui32 (view_cells'last) then
      put_line ("number of view cells greater than statically sized array");
      return;
   end if;


   --put_line (float'image (16#38D1B717.0#));
   --new_line(2);


   --put_line ("worldMin xyz" & worldMin (0)'image &  worldMin (1)'image & worldMin (2)'image);
   --put_line ("worldMax xyz" & worldMax (0)'image &  worldMax (1)'image & worldMax (2)'image);

   --  0 based (offset of 1 makes frontIndex and backIndex of nodes never match last leaf)
   --  old, incorrect: numViewCells 1-based? (not checked specifically, game code likely just does < numViewCells, = numViewCells - 1?)
   for vc_num in 1 .. vis_header.numViewCells loop
      --  workaround for not being able to use unchecked_union with stream (node and leaf are some size so can read either)
      --  !!! reading from stream using node type with range constraints modifies value?
      view_cell_leaf'read (vis_stream, view_cells (vc_num).leaf);
   end loop;



   put_line ("file index after vc read (should within 6 bytes of pvs list offset?):"
     & sio.positive_count'image (sio.index (vis_file) - 1));
     --  subtract from ada 1 based index will match c 0 based


   --  !allow use of multiple commands?

   for index in 2 .. cli.argument_count loop
      if cli.argument (index) = "-vc_txt" then  --  notice of file saved to
         vc_to_txt;
         sio.close (vis_file);
         return;
      elsif cli.argument (index) = "-vc_obj" then
         nodes_to_obj (no_duplicates => false);
         sio.close (vis_file);
         return;
      elsif cli.argument (index) = "-vc_obj_rd" then
         nodes_to_obj (no_duplicates => true);
         sio.close (vis_file);
         return;
      elsif cli.argument (index) = "-vc_debug_obj" then
         sio.set_index
           (File => vis_file,
            To  => sio.positive_count (vis_header.debugViewCellsStart + 1));
         read_debug_view_cell_info (vis_stream);
         sio.close (vis_file);
         return;
      elsif cli.argument (index) = "-on_obj" then
         sio.set_index
           (File => vis_file,
            To  => sio.positive_count (vis_header.objectListStart + 1));
         oN_to_obj (vis_stream);
         sio.close (vis_file);
         return;
      else
         put_line ("""" & cli.argument (index) & """ unknown arg");
         sio.close (vis_file);
         return;
      end if;
   end loop;


   sio.close (vis_file);


   gnat.sockets.create_socket
     (socket => udp_sock,
      family => gnat.sockets.family_inet,
      mode   => gnat.sockets.socket_datagram);

   gnat.sockets.control_socket (udp_sock, non_blocking_request);

   gnat.sockets.bind_socket (udp_sock, bind_address);

   put_line (gnat.sockets.image (bind_address));
   put_line ("press any key to exit");

   udp_stream.set_socket (udp_sock);


   loop
      ego_telemetry.telemetry_format_1'read (udp_stream'access, td_1);

      if not udp_stream.data_available then  --  errno 35 no data available? way to differentiate?
         --put_line ("no data");
         delay 0.500;

         declare
            input : character;
            was_available : boolean;
         begin
            get_immediate (input, was_available);
            exit when was_available;
         end;

         goto loop_continue;
      end if;

      td_1.position_y := td_1.position_y + 0.64281435;

      vc_leaf := findViewCell
        (vc => view_cells (view_cells'first),
         p_pos  => (td_1.position_x, td_1.position_y, td_1.position_z, 0.0),
         vc_index => 0);


      if r_count = 49 then
         put_line ("issue, reached r limit");
         handle_r_limit;
         return;
      end if;


      pvs_offset := ui32 (vc_leaf.pvsOffsetLowerBits) or
        shift_left (ui32 (vc_leaf.pvsOffsetTopBits), 16);

      if pvs_offset /= last_pvs_offset then
         --afplay_pid := os.non_blocking_spawn ("/usr/bin/afplay", afplay_arg);

         put_line ("called" & r_count'image & " times");

--          put_line
--            ("x: " & td_1.position_x'image & NL &
--             "y: " & td_1.position_y'image & NL &
--             "z: " & td_1.position_z'image);

         put_line ("_________________________________");
         put_line ("entered new view cell");
         put_line ("pvs_offset:" & pvs_offset'image);

         put_line ("trace p_pos: " & v4t_image
           ((td_1.position_x, td_1.position_y, td_1.position_z, 0.0)));

         --  write to obj, group name is order (trace index) and other data?
         --  square is  p_pos
         --  'plane_<trace_index>_(<axis>)_'

         --  2d graph?

         for n of trace (trace'first .. trace_index) loop
            put_line (n.node_index'image);
         end loop;
         new_line (2);

      end if;

      last_pvs_offset := pvs_offset;

      <<loop_continue>>

      trace_index := 0;
      r_count := 0;

   end loop;

end view_cell_read_test;
