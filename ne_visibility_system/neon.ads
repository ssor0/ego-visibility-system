
with system;

with interfaces; use interfaces;


package neon is

   subtype void_ptr is system.address;
   pragma compile_time_error (void_ptr'size not in 32 | 64, "void p unexpected size");

   --  !
   subtype ui8 is unsigned_8;
   subtype ui16 is unsigned_16;
   subtype ui32 is unsigned_32;


   --  ! not original
   --  ! file point 3?
   type cartesian_coord is (x, y, z, w);
   subtype coord_2d is cartesian_coord range x .. y;
   subtype coord_3d is cartesian_coord range x .. z;
   subtype coord_4d is cartesian_coord range x .. w;
   type point3 is array (coord_3d) of float;

   subtype NEuint is unsigned_32;
   subtype NEfloat is float;

   type NeBool is new boolean with size => 8, convention => C;
   pragma compile_time_error (NEbool'size /= 8, "bool unexpected size");


   type NePoint3 is record
      x, y, z, unused : float;  --  ! temp, not original
   end record
     with pack;
   pragma compile_time_error (NEPoint3'size / 8 /= 16, "ne point 3 unexpected size");

   type NeBoundingBox is record
      m_min : NePoint3;
      m_max : NePoint3;
   end record
     with pack;
   pragma compile_time_error (NEboundingbox'size / 8 /= 32, "ne bounding box unexpected size");


   type NePlane is record
      x, y, z, unused : float;  --  ! temp, not original, supposed to be NeFloat4
   end record;
   pragma compile_time_error (NEPlane'size / 8 /= 16, "ne plane unexpected size");

   type NePlane_array is array (natural range <>) of nePlane;


   type NeBoundingsphere is record
      --  ! members not original
      pos : point3;
      radius : float;
   end record;
   pragma compile_time_error (NEboundingSphere'size / 8 /= 16, "ne bounding sphere unexpected size");


   --  ! do arrays need convention c?

   --  ! not original
   --  ! for unsigned char*
   subtype byte is unsigned_8;
   --type byte_ptr is access all byte;
   type byte_array is array (ui32 range <>) of byte with pack;
   type byte_array_ptr is access all byte_array with size => 64;

   subtype NEByte is byte;
   --subtype Nebyte_ptr is 
   subtype NEByte_array is byte_array;
   subtype NEByte_array_ptr is byte_array_ptr;

--    function Shift_Left
--      (Value  : Unsigned_8;
--       Amount : Natural) return Unsigned_8
--       with Import, Convention => Intrinsic, Static;
-- 
--    function Shift_Right
--      (Value  : Unsigned_8;
--       Amount : Natural) return Unsigned_8
--       with Import, Convention => Intrinsic, Static;



end neon;
