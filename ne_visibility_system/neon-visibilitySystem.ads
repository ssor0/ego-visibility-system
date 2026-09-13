with ada.text_io; use ada.text_io;

with interfaces; use interfaces;


package neon.visibilitySystem is
--calcVisibleSet

 
--    package neVisibilitySystem is
--       procedure test_p;
--    end neVisibilitySystem;

   type DynamicObject;  --  forward
   type DynamicObjectContainer;  --  forward
   type  DynamicObjectsInNode;  --  forward


   type NeVisibilitySystem is record  --  class
      vtable : void_ptr;
   end record
     with pack;

   pragma compile_time_error (NeVisibilitySystem'size / 8 /= 8, "NeVisibilitySYstem not correct size");


   type ObjectNode is record                    
      min : point3;  --  0x0                     
      pvsByteOffset : unsigned_16; --  0xC, offse
      pvsBitOffset : unsigned_16;  --  0xE, offse
      max : point3;  --  0x10                    
      index : unsigned_16;   --  0x1c, index of O
      numStaticObjects : unsigned_16;  --  0x1e  
      nextOffset : unsigned_32;  --  0x20        
      nextSize : unsigned_16;  --  0x24          
      depth : unsigned_16;   -- 0x26,  z depth in

      --  original  uint[2]
      pad : byte_array (1 .. 8);  --  0x28
   end record  --  size 0x30                     
     with pack;                                  
   type objectNode_array is array (natural range <>) of objectNode with pack;


   type DynamicObject is record  --  class?
      m_min : point3;  --  flaat[3]
      m_id : NEuint;
      m_max : point3;  --  float[3]
      m_layer : NEuint;  --  !  eventually dynamic_layer_name enum
      m_owner : access ObjectNode;
      m_prevInNode : access DynamicObject;
      m_nextInNode : access DynamicObject;
      m_containers : access DynamicObjectContainer;
   end record;
   type DynamicObject_array is array (natural range <>) of DynamicObject;
   type DynamicObject_array_ptr is access all DynamicObject_array with size => 64;



   type DynamicObjectsInNode is record  --  class?
      m_dynamicObjects : DynamicObject_array_ptr;
      m_node : access ObjectNode;
   end record;
   pragma compile_time_error (DynamicObjectsInNode'size / 8 /= 16, "dynamic object in node not correct size");

   type DynamicObjectsInNode_array is array (natural range 0 .. 4096 - 1) of
     DynamicObjectsInNode with pack;
   pragma compile_time_error (DynamicObjectsInNode_array'size / 8 /= 65536, "dynamic objects in node array not correct size");


   type DynamicObjectContainer is record
      m_object : DynamicObject;
      m_next : access DynamicObjectContainer;
      m_prev : access DynamicObjectContainer;

      --  !  originally:  uint[2] m_pad
      m_pad_1 : unsigned_32;
      m_pad_2 : unsigned_32;
   end record;
   pragma compile_time_error (DynamicObjectContainer'size / 8 /= 88, "dynamic object container not correct size");


   --  not original
   type DynamicObjectsUsedPerLayer_array is array (natural range 0 .. 15) of
     NEuint with pack;

   type DynamicObjectRepository is record   -- class?
      m_maxObjects : NEuint;
      m_numFree : NEuint;
      m_numUsed : NEUint;
      m_objects : access DynamicObjectContainer;
      m_usedObjects : access DynamicObjectContainer;
      m_freeObjects : access DynamicObjectContainer;
      m_numUsedPerLayer : DynamicObjectsUsedPerLayer_array;  --  original: uint[16]
   end record;
   pragma compile_time_error (DynamicObjectRepository'size / 8 /= 104, "dynamic object repository not correct size");


   --  ! temp
   type NeCriticalSection is record --null record with size => 48 * 8;
      temp_0x0_0x30 : byte_array (1 .. 48);
   end record;
   pragma compile_time_error (NeCriticalSection'size / 8 /= 48, "ce not correct size");

   --  ! temp
   subtype NeAtomicInt is integer;

   type visibilitySystem is record  --  class
      super : NeVisibilitySystem;
      m_systemPool : void_ptr;  --  ! NeIAlloocPool*
      m_dynamicObjectPool : void_ptr;  --  ! NeIAlloocPool*
      m_binaryFile : NeByte_array_ptr;
      m_header : void_ptr;  --  ! Header*
      m_isLoaded : Nebool;
      m_viewCellRoot : void_ptr;  --  ! ViewCell*
      m_objectTreeRoot : void_ptr;  --  ! ObjectNode*
      m_dynamicObjectsInNode : DynamicObjectsInNode_array;
      m_dynmaicObjectRepository : DynamicObjectRepository;
      m_debugFirstViewCell : void_ptr;  --  ! DebugViewCellInfo*
      m_writeCriticalSection : NeCriticalSection;
      m_readCount : NeAtomicInt;

      --  ! not original
      padding : byte_array (1 .. 4);
   end record;  --  ! original is packed?
   pragma compile_time_error (visibilitySystem'size / 8 /= 65768, "visibility system not correct size");


   --  original name PVSType
   type PVS_Type is
     (NoPVS,       --  0
      PerNodePVS,  --  1
      PerItemPVS)  --  2,  ! hardcoded perItemPVS?
     with convention => C;


   type QueryParams is record
      frustum : byte_array (1 .. 16#e0#);  -- ! temp, NeFrustom
      sphere : neBoundingSphere;
      fov : float;
      pvsType : PVS_Type;
      omssCutoff : float;  --  ! omission cutoff?
      padding_0xfc_0x100 : byte_array (1 .. 4);
      sortingPosition : NePoint3;
      returnAllItems : NeBool;
      padding_0x111_0x113 : byte_array (1 .. 3);
      staticLayerMask : integer;
      dynamicLayerMask : integer;
      sortFrontToBack : NeBool;
      padding_0x11d_0x11f : byte_array (1 .. 3);
      calculatedCutoff : float;
      numUserClipPlanes : integer;
      padding_0x128_0x12f : byte_array (1 .. 8);
      userClipPlanes : neplane_array (1 .. 3); --  ! temp, NePlane[3] is class?
      pad : unsigned_32;  --  ! originally uint[1] pad
      padding_0x164_0x16f : byte_array (1 .. 12);
   end record;

   pragma compile_time_error (QueryParams'size / 8 /= 16#170#, "QueryParams not correct size");


   type Item is record
      id : NEuint;  --  index to item in specific manager class
      depth : NEfloat; --  distance for Lod calculation? 1 of many discrete values from reciprocal table?
   end record
     with pack;

   pragma compile_time_error (Item'size / 8 /= 8, "item not correct size");

   type Item_ptr is access all Item;
   type Item_array is array (natural range <>) of item with pack;
   type Item_array_ptr is access all Item_array with size => 64;


   type VisibleLayer is record
      numItems : NEUint;

      --  ! not original
      padding_1 : neuint;

      itemList : Item_array_ptr;
      maxItems : NEuint;

      --  ! not original
      padding_2 : neuint;
   end record;
     --  ! original has alignment of 8 bytes?

   pragma compile_time_error (item_array_ptr'size /= 64, "array ptr not 64 bits?");

   pragma compile_time_error (NEUint'size / 8 /= 4, "ne uint not correct size");
   pragma compile_time_error (nefloat'size / 8 /= 4, "ne float not correct size");

   pragma compile_time_error (VisibleLayer'size / 8 /= 24, "visible layer not correct size");



   --  ! unofficial enum
   type static_layer_name is 
     (track_block,  --  0    
      ground_cover,          
      ornaments,             
      trees,                 
      crowd,  -- and led flar
      unknown_sl_5,          
      interactive_water,  -- 
      tbd_ground_clutter,  --
      lights, --  local light
      unknown_sl_9,          
      unknown_sl_10,         
      unknown_sl_11,         
      unknown_sl_12,         
      unknown_sl_13,         
      unknown_sl_14,         
      unknown_sl_15);  --  16 total

   type VisibleLayer_array is array (natural range 0 .. 15) of VisibleLayer;

   --  ! unofficial
   --  future
   --type VisibleLayer_dynamic_array is array (natural range <>) of VisibleLayer;
   --  ! unofficial
   type StaticVisibleLayer_array is array (static_layer_name) of VisibleLayer;


   type VisibleSet is record
      staticLayers : StaticVisibleLayer_array;  -- ! enum index not original
      dynamicLayers : VisibleLayer_array;
      staticItemList : Item_array_ptr;
      dynamicItemList : item_array_ptr;
      maxDynamicItems : NEuint;
      uncompressedPVSData : byte_array_ptr;
      numItemsScreenSizeRejected : NEuint;
      numItemsVisCheckedAndAccepted : NEuint;
      numItemsVisCheckedAndRejected : NEuint;
      numItemsTriviallyAccepted : NEuint;
      numNodesFullyVisible : NEuint;
      numNodesPartiallyVisible : NEuint;
      pvsCompressionRatio : NEfloat;
      leafPVSOcclusion : NEfloat;
      totalPVSOcclusion : NEfloat;

       --  ! original is array of 3 uints
      pad_1 : unsigned_32;
      pad_2 : unsigned_32;
      pad_3 : unsigned_32;
   end record;

   pragma compile_time_error (VisibleSet'size / 8 /= 16#350#, "visible set not correct size");


   --  ! return int values
   function neon_neVisibilityTest_boundingSphere_boundingBox return neuint;

   function neon_neVisibilityTest_Frustum_boundingBox return Neuint;

   function neon_neVisibilityTest_plane_boundingBox return Neuint;


   --  Visibility enum?
   vis_outside : constant := 0;
   vis_inside : constant := 1;
   vis_intersect : constant := 2;
   --  ! above constants and vis tests are in ne_geometry_visibility file

   procedure calcVisibleSet
     (dynamicObjectsInNodeTable : in DynamicObjectsInNode_array;
      rootNode                  : access objectnode;
      pvs                       : access NEbyte_array;
      query                     : access QueryParams;
      visible_Set               : access VisibleSet)
   with convention => c;
      --  ! original arg name visibleSet


-- begin
--  put_line ("item_array_ptr size" & integer'image (item_array_ptr'size / 8));
--  put_line ("visible layer size" & integer'image (visiblelayer'size / 8));

end neon.visibilitySystem;
