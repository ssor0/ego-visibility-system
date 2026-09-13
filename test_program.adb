with ada.text_io; use ada.text_io;

with interfaces; use interfaces;

with gnat.sse;                                                                                                                                                                           
with gnat.sse.vector_types; 

procedure test_program is

   package sse_vt renames gnat.sse.vector_types;
   package sse renames gnat.sse;

   function ia32_psrldq (V : sse_vt.m128i; Imm : unsigned_8) return sse_vt.m128i
     with import,
          inline_always,
          external_name => "__builtin_ia32_psrldqi128",
          convention => intrinsic;

   function b (A : in unsigned_8) return unsigned_8 is
     (a * 8) with inline, static;

--    function "*" (A : in unsigned_8) return unsigned_8 is
--      (a * 8) with inline, static;

--    function mm_srli_si128 (V : sse_vt.m128i; Imm : unsigned_8) return sse_vt.m128i;
--    pragma import (intrinsic, mm_srli_si128, "_mm_srli_si128");
-- 
--    function mm_bsrli_si128 (V : sse_vt.m128i; Imm : unsigned_8) return sse_vt.m128i;
--    pragma import (intrinsic, mm_bsrli_si128, "_mm_bsrli_si128");

   type vf32_view is array (positive range 1 .. 4) of sse.float32 with alignment => sse.vector_align;

   v1 : sse_vt.m128i;                                                           
   v1_view : vf32_view := (1.0, 1.0, 1.0, 1.0) with address => v1'address;      
                                                                                                     
   v2 : sse_vt.m128i;                                                        
   v2_view : vf32_view with address => v2'address;                           

begin
   put_line (v1_view (1)'image & v1_view (2)'image & v1_view (3)'image & v1_view (4)'image);
   v2:= ia32_psrldq (v1, 4 * 8);
   --v2:= mm_srli_si128 (v1, 8);
   put_line (v2_view (1)'image & v2_view (2)'image & v2_view (3)'image & v2_view (4)'image);
end test_program;
