pragma allow_integer_address;


with ada.text_io; use ada.text_io;


package body neon.visibilitySystem is


   function neon_neVisibilityTest_boundingSphere_boundingBox return neuint is
   begin
      put_line ("TEMP");
      return 0;
   end neon_neVisibilityTest_boundingSphere_boundingBox;

   function neon_neVisibilityTest_Frustum_boundingBox return neuint is
   begin
      put_line ("TEMP");
      return 0;
   end neon_neVisibilityTest_Frustum_boundingBox;

   function neon_neVisibilityTest_plane_boundingBox return neuint is
   begin
      put_line ("TEMP");
      return 0;
   end neon_neVisibilityTest_plane_boundingBox;



   --  !  change lower depth to higher depth


   procedure calcVisibleSet
     (dynamicObjectsInNodeTable : in DynamicObjectsInNode_array;
      rootNode                  : access Objectnode;
      pvs                       : access NEbyte_array;
      query                     : access QueryParams;
      visible_Set               : access VisibleSet)  --  ! c inter and out param?
   is

      function next_oN (oN : access ObjectNode) return access ObjectNode is
         res : ObjectNode with address => rootNode.all'address + oN.nextOffset;
      begin
         return res'unrestricted_access;
      end next_On;

      function is_bit_set (byte_val : NEbyte; bit : ui16) return boolean
        is ((shift_right (byte_val, natural (bit)) and 1) = 1);

      prev_objNode_depth : NEuint := 0;

      --prev_oN_visible : NEbool := false;  --  %r13
      --prev_ON_not_visible : NEbool := false;  --  %r14

      pvs_byte : Nebyte := 0;

      curr_on_min : point3;  --  -0x70(%rbp)
      curr_on_max : point3;  --  -0x60(%rbp)

      sphere : neBoundingSphere := query.sphere;
      sphere_vis_test : boolean;

      frustum_vis_test : boolean;

      eax : neuint := 0;

      --  !  r13 and r14 likely booleans?
      r14 : neuint := 0;  --  ! prev oN visible = 1?
      r13 : neuint := 0;  --  ! prev oN not visible = 1?

      type Objectnode_access is access Objectnode;
      --oN : access Objectnode := rootNode;
      oN : access Objectnode := rootNode;
      oN_2 : Objectnode_access;

   begin
      loop --oN of rootNode loop

         if oN.nextOffset /= 0 then
            null;
            --  ! cache? prefetch for next object node if nextOffset not 0
         end if;

         --  ! result of vis tests is lost enum?

         --  !  always executes first loop iter
         --  !  previous oN partially visible? (intersect)
         --  100b7e27b
         if (r13 = 0) and (r14 = 0) then
            goto prev_ON_partially_visible;  --  dest 100b7e2b0
         end if;


         --  quad tree depth
         --  curr node has lower depth than last (new cell?)
         --  100b7e285
         if NEuint (oN.depth) <= prev_objNode_depth then
            --  ! bad vocabulary, depth being smaller is higher depth
            goto curr_ON_has_higher_depth;  --  dest 100b7e350
         end if;

         --  ! else, curr oN has deeper depth (within previous)


         --  100b7e296
         --  ! original  test 0x1, r14 (r13 same)
         --              jne
         --  ! jump if first bit is 1, but vis test results are
         --    always 0, 1 or 2 (and only 1 has first bit set), so
         --    may be if r14, r13 = 1?

         --  ! r13 and r14 for if result of oN, and result of oN that with
         --    higher depth?

         --  !  r13 r14 originally single (enum?) var that compiler
         --     optimized to two boolean registers?
         --    (enum was same (ternary?) as visibility test res enum?)

         --  ! not technically = 1 but r13 r14 never set to value otther
         --    than 1 or 0?

         --  previous oN not visible
         if r14 = 1 then

            --  ! curr oN is within previous (curr has deeper depth/smaller bounding box/area)
            --    and previous oN was statically not visible (pvs bit = 0)
            --    (jumps to end of loop without doing anything)
            goto continue_loop;  --  dest 100b7e550

         --  previous oN visible
         elsif r13 = 1 then

            --  curr oN is within previous (curr has deeper depth) and previous
            --  oN was statically visible (pvs bit = 1)
            --  (adds to visible set without any test)
            goto previous_was_visible;  --  dest 100b7e4db

         end if;

         --  ! side effect of possible enum var in conditional statement?
         --  ! path never reached?

         goto previous_partially_visible_not_used;  --  dest 100b7e522

         --  0x100b7e2b0
         <<prev_ON_partially_visible>>

         --  100b7e2b6
         --   inverse of original conditional
         --  !  object node partially visible?
         if (query.pvsType /= NoPVS) or (pvs /= null)  then --  ! byte array ptr?
         --  100b7e2c5

            pvs_byte := pvs (ui32 (oN.pvsByteOffset));
            if not is_bit_set (pvs_byte, oN.pvsBitOffset) then
                  goto bit_for_ON_zero;  --  dest 100bc7e50b
            end if;
         end if;

         --  100b7e2dc
         curr_on_min := on.min;
         curr_on_max := on.max;
         --  sphere:   x y z, radius
         --  radius always 0 in grid autosport or when placed in QueryParams?
         --  !   debugger
         if sphere.radius <= 0.0 then  --  memset pattern 0.0, 2.0, 5.0, 6.0
            goto fr_test;  --  dest 100b7e3d8
         end if;

         --  ! skip bounding sphere test if radius 0?

         --  100b7e338
         eax := neon_neVisibilityTest_boundingSphere_boundingBox;
         goto after_sphere_vis_test; -- dest 100b7e3e7

          --  0x100b7e350
         <<curr_ON_has_higher_depth>>
         --  current object node has lower qt depth

         --  same conditional pattern as above

         if (query.pvsType /= NoPVS) or (pvs /= null)  then
         --  100b7e365

            pvs_byte := pvs (ui32 (oN.pvsByteOffset));
            if not is_bit_set (pvs_byte, oN.pvsBitOffset) then
                  goto bit_for_ON_zero;  --  dest 100bc7e50b
            end if;
         end if;

         --  100b7e37c,  below is in else branch of above cond?
         --  ! copies of ON bounds if depth lower?
         if sphere.radius <= 0.0 then  --  memset pattern 0.0, 2.0, 5.0, 6.0
            goto lower_depth_fr_test;
         end if;

         --  100b7e3d1
         eax := neon_neVisibilityTest_boundingSphere_boundingBox;
         goto after_lower_depth_sphere_vis_test;  --  dest 100b7e44e

         --  100b7e3d8
         <<fr_test>>

         --  ! dest of jump if first bounding sphere test less than or equal to 0.0

         --  ! path always taken? at least common?

         --  100b7e3e2
         eax := neon_neVisibilityTest_Frustum_boundingBox;

         --   FALLTHROUGH

         --  100b7e3e7
         <<after_sphere_vis_test>>
         r14 := eax;

         --  ! result of frustum_vis_test for gen jarama always 2?

         --  100b7e3ea
         --  execution reaches here
         --  2 clip planes present on title screen and/or frontend?
         --  2 at jarama?
         --  3 at brands hatch?
         --  where is set?
         if query.numUserClipPlanes = 0 then
            goto no_clip_planes;  --  dest 100b7e49f
         end if;
         --  !  clip plane loop is in else path?

         --  r14 2 with jarama gen vis
         --  100b7e3fb
         if r14 = vis_outside then  --  0
            goto sphere_or_frustum_test_outside;  --  dest 100b7e4a4
         end if;

         for plane of query.userClipPlanes loop
            --  100b7e421
            eax := neon_neVisibilityTest_plane_boundingBox;  -- !  plane, oN bounding box

            --  jarama gen vis
            --  plane 1 test is 1
            --  plane 2 test is 2 (causes jump)

            --  original is:  test eax, 0xfffffffd
            --                je
            --  jumps if 0 or 2?
            if eax in vis_outside | vis_intersect then  --  0 | 2
               --  100b7e42b
               goto converge;  --  dest 100b7e4c0
            end if;
         end loop;

         --  !  places res of frustum or sphere test back into eax if plane
         --     test was 1 (vis_inside, within clip planes)
         eax := r14;  -- 100b7e43d

         --  100b7e440
         goto converge;  --  dest 100b7e4c0

         --  important location? else path?
         --  #############################################################

         --  100b7e442
         --  !  sphere test skipped (sphere radius 0)
         <<lower_depth_fr_test>>

         --  100b7e449
         eax := neon_neVisibilityTest_Frustum_boundingBox;

         --  FALLTHROUGH

         --  100b7e44e
         <<after_lower_depth_sphere_vis_test>>
         --  !  result of sphere or frustum test placed in r14
         r14 := eax;

         --  !  clip plane test for lower depth

         --  100b7e451
         if query.numUserClipPlanes = 0 then
            goto no_clip_planes_lower_depth; --  dest 100b7e4a9
         end if;

         if r14 = 0 then --  !  'test and' 0
            goto frustum_or_sphere_test_lower_depth_is_0;  --  dest 100b7e4ae
         end if;

         --   !   second userClipPlanes loop
         --  100b7e463
         for plane of query.userClipPlanes loop

            eax := neon_neVisibilityTest_plane_boundingBox;  -- !  plane, oN bounding box

            --  original is:  test eax, 0xfffffffd
            --                je
            --  jumps if 0 or 2?

            if eax in vis_outside | vis_intersect then  -- 0 | 2
               goto converge;  --  dest 100b7e4c0
            end if;
         end loop;

         --  !  no intersect with plane, r14 prev vis test result?
         eax := r14;

         --  100b7e49d
         goto converge;

         -- switch case?

         --  100b7e49f
         <<no_clip_planes>>
         --  !  places res of frustum or sphere test back into eax if no planes
         eax := r14;
         goto converge;  -- dest 100b7e4c0

         --  100b7e4a4
         <<sphere_or_frustum_test_outside>>
         --  ! oN was outside of sphere or frustum (skips clip plane test)
         eax := r14;
         goto converge;  -- dest 100b7e4c0

         --  100b7e4a9
         <<no_clip_planes_lower_depth>>
         eax := r14;
         goto converge;  -- dest 100b7e4c0

         --  100b7e4ae
         <<frustum_or_sphere_test_lower_depth_is_0>>
         eax := r14;

         --  FALLTHROUGH

         --  !  jarama gen vis jumps here from first clip plane loop,
         --     eax = 2

         --  100b7e4c0
         <<converge>>

         --  !    ^ final vis determination? (all paths ends up here?)
         --  ! #######################################################


         --if eax = vis_inside then

         if eax /= vis_inside then  --  1
            goto partially_or_not_visible; --  dest 100b7e500
         end if;

         --  100b7e4c5
         prev_objNode_depth := neuint (oN.depth);
         r13 := 1;
         r14 := 0;  --  xor r14 r14

         --  FALLTHROUGH

         --  100b7e4db
         <<previous_was_visible>>

         visible_set.numNodesFullyVisible :=
           visible_set.numNodesFullyVisible + 1;

         --  100b7e4f9
         --  neon::addObjectsToListTrivially();  void

         goto continue_loop;  --  dest 100b7e550



         --  ! jarama gen vis jumps here from 100b7e4c0
         --    and then jumps to to 100b7e51c with eax = 2

         --  100b7e500
         <<partially_or_not_visible>>
         if eax /= vis_outside then  --  0
            goto partially_visible;  --  dest 100b7e51c
         end if;
         --  FALLtHROUGH
         --  100bc7e50b
         <<bit_for_ON_zero>>
         prev_objNode_depth := neuint (oN.depth);
         r13 := 0;  --  xor r13, r13
         r14 := 1;
         goto continue_loop;  --  dest 100b7e550

         --  100b7e51c
         <<partially_visible>>
         r13 := 0;
         r14 := 0;
         --  FALLTHROUGH
         --  100b7e522
         <<previous_partially_visible_not_used>>  --  !  path never used?
         visible_set.numNodesPartiallyVisible :=
           visible_set.numNodesPartiallyVisible + 1;

         --  ! oN partially visible (insect) tests individual static items
         --    (falls back to per item visibility)?

         --  neon::addObjectsToListWithVisibilityTest();  void

         --  FALLTHROUGH

         --  0x100b7e550
         --  ! rename?
         <<continue_loop>>

         exit when oN.nextOffset = 0;

         oN := next_oN (oN);
         --  ! causes internal compiler error
         --    seems to be caused by left side being anonymous access type?
         --oN := objectNode'Deref (rootNode.all'address + oN.nextOffset)'access;
         --  !  compiles
         --oN_2 := objectNode_access'deref (rootNode.all'address + oN.nextOffset);

         --  object node ptr + nextOffset;

      end loop;


   end calcVisibleSet;


--    package body neVisibilitySystem is
--       procedure test_p is
--       begin
--          null;
--       end test_p;
--    end neVisibilitySystem;

end neon.visibilitySystem;
