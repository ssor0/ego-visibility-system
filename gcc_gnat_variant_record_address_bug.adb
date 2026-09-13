with Interfaces; use Interfaces;


procedure gcc_gnat_variant_record_address_bug is


   type unsigned_16_array is array (Positive range <>) of unsigned_16;


   type vc_kind is (vc_node, vc_leaf, vc_debug);


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




   first_32: unsigned_32 with Address => vc'Address;
   --for first_32'address use vc'address;


   vc_buffer : unsigned_16_array (1 .. 3);

   --  ! should always start as node?
   vc : view_cell_type (vc_node) with Address => vc_buffer'address;





begin

   null;

end gcc_gnat_variant_record_address_bug;
