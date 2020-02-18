//ccb related
recipes.addShapeless(<contenttweaker:pottery_clay> * 2,[<ore:clay>, <minecraft:dye:15>]);
recipes.addShaped(<contenttweaker:ccb_base>, [[<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>],[<minecraft:redstone>, <contenttweaker:clay_board>, <minecraft:redstone>], [<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>]]);
furnace.addRecipe(<contenttweaker:ccb>, <contenttweaker:ccb_base>, 0);
recipes.addShaped(<contenttweaker:clay_board>, [[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>, null],[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>, null], [null, null, null]]);

//Solder related
recipes.addShapeless(<contenttweaker:solder_powder> * 2, [<botania:pestleandmortar>.reuse(),<ore:dustLead>,<ore:dustTin>]);
recipes.addShaped(<contenttweaker:solder_bucket>, [[null, <contenttweaker:solder_powder>, null],[<contenttweaker:solder_powder>, <minecraft:bucket>, <contenttweaker:solder_powder>], [null, <contenttweaker:solder_powder>, null]]);

//paper planes
recipes.addHiddenShaped("paper_plane_6", <contenttweaker:paper_plane_6>, [[null, null, null],[null, <contenttweaker:paper_plane_5>, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_5", <contenttweaker:paper_plane_5>, [[null, null, null],[null, null, null], [<contenttweaker:paper_plane_4>, null, null]]);
recipes.addHiddenShaped("paper_plane_4", <contenttweaker:paper_plane_4>, [[null, null, null],[null, null, <contenttweaker:paper_plane_3>], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_3", <contenttweaker:paper_plane_3>, [[null, <contenttweaker:paper_plane_2>, null],[null, null, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_2", <contenttweaker:paper_plane_2>, [[null, null, null],[null, null, null], [null, <contenttweaker:paper_plane_1>, null]]);
recipes.addHiddenShaped("paper_plane_1", <contenttweaker:paper_plane_1>, [[null, null, null],[null, <contenttweaker:paper_plane_0>, null], [null, null, null]]);