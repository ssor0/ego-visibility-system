### (this is very a temporary readme that was quickly written when first creating a repository for this so the information be shared with someone else, i apologize if it looks like it was llm generated. the file format, reverse engineered functions and the code/program will eventually be completely documented and explained in a very in depth manner)

(this particular system is applicable for every codemasters game from dirt 2 to
dirt rally 2. race driver grid (2008) and ego 4.0 and later (f1 2015, grid 2019 etc) use a different format/method)

main source code file `view_cell_read_test.adb`, files in `src/` are outdated

file sections:
 - view cells, BSP hyperplanes that split along x y or z axis
 - run length encoded, bit field PVS data for what is visible per view cell. bits for each object node and all static items it contains. if length byte is negative then run is compressed, if positive then run is literal/uncompressed bytes (shouldnt ever be more than 1 or 2 bytes). padded to 16 bytes
 - object node and static item 3d-tree (kd tree), recursively nested bounding boxes that split track areas along cycling x and z axis (sometimes y), organized in depth first order.
 bounding boxes for object nodes and items are used for Lod calculation and when the game falls back to dynamic/runtime visibility tests (should mostly be when a full object node is only parttially visible and only the items in it that are within the camera view need to be added)
   - each object node has a list of every item (3d asset) that are within the bounds it split the track area into (some are empty).
   each item in the object node contains a layer (what kind of item it is), index (id) for the position it will end up in the array it is loaded into in memory (usually one of the `*Manager` classes, i.e. `OrnamentManager`)
   and a bounding box.
- debug view cells, not always in the file (seems to have been left behind on accident in certain games). contains bounding boxes that more clearly visually represent the view cell leaf node that the hyperplanes in the first section end up forming

static item layer ids (index of 0 to 15), unknown layers likely just unused
  - 0: TRACK_BLOCK  (track surface/terrain)
  - 1: GROUND_COVER (grass, small foliage)
  - 2: ORNAMENTS (buildings, props, essentially any 3d asset that is not a tree, crowd or the track surface)
  - 3: TREES
  - 4: CROWD (audience)
  - 5: UNKNOWN_SL_5
  - 6: INTERACTIVE_WATER
  - 7: TBD_GROUND_CLUTTER
  - 8: LIGHTS
  - 9: UNKNOWN_SL_9
  - 10: UNKNOWN_SL_10
  - 11: UNKNOWN_SL_11
  - 12: UNKNOWN_SL_12
  - 13: UNKNOWN_SL_13
  - 14: UNKNOWN_SL_14
  - 15: UNKNOWN_SL_15

