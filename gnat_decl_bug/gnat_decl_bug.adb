with Interfaces; use Interfaces;

with Ada.Text_IO; use Ada.Text_IO;


procedure gnat_decl_bug is


   type Test_Type is new Unsigned_64;

   --  Same issue with record type
   --type Test_Type is record
   --   Var_1 : Natural;
   --   Var_2 : Natural;
   --   Var_3 : Natural;
   --end record;

   --  Same issue with array type
   --type Test_Type is Array (Positive range 1 .. 3 ) of Natural;


--  Lines bug listed in bug message,
--  gcc/ada/gcc-interface/decl.cc: 798 479, 621, 798

   Test_Base : Unsigned_64;

   --  Compiler responds correctly if `View_32` declared after
   --  entity whose address is being used
   View_32 : Unsigned_32 with Address => Test'Address;

   --  Compiler responds correctly if `'Address` attribute is
   --  used instead of aspect
   --for View_32'address use Test'address;


   --  Compiler responds correctly if `Test` is declared before
   --  `Test_Base` above
   Test : Test_Type with Address => Test_Base'Address;

   --  Compiler appears to successfully compile if entity is of a type
   --  from another compilation unit?
   --Test : Unsigned_64 with Address => Test_Base'Address;


begin
   null;
end gnat_decl_bug;
