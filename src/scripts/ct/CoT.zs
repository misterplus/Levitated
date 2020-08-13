//CCB related
recipes.addShapeless(<contenttweaker:pottery_clay> * 2, [<ore:clay>, <minecraft:dye:15>]);
recipes.addShaped(<contenttweaker:ccb_base>, [[<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>], [<minecraft:redstone>, <contenttweaker:clay_board>, <minecraft:redstone>], [<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>]]);
furnace.addRecipe(<contenttweaker:ccb>, <contenttweaker:ccb_base>, 1);
recipes.addShaped(<contenttweaker:clay_board>, [[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>],[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>]]);

//Solder related
recipes.addShapeless(<contenttweaker:solder_powder> * 2, [<botania:pestleandmortar>.reuse(),<ore:dustLead>,<ore:dustTin>]);
recipes.addShaped(<contenttweaker:solder_bucket>, [[null, <contenttweaker:solder_powder>, null],[<contenttweaker:solder_powder>, <minecraft:bucket>, <contenttweaker:solder_powder>], [null, <contenttweaker:solder_powder>, null]]);

//Paper planes
recipes.addHiddenShaped("paper_plane_6", <contenttweaker:paper_plane_6>, [[null, null, null], [null, <contenttweaker:paper_plane_5>, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_5", <contenttweaker:paper_plane_5>, [[null, null, null], [null, null, null], [<contenttweaker:paper_plane_4>, null, null]]);
recipes.addHiddenShaped("paper_plane_4", <contenttweaker:paper_plane_4>, [[null, null, null], [null, null, <contenttweaker:paper_plane_3>], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_3", <contenttweaker:paper_plane_3>, [[null, <contenttweaker:paper_plane_2>, null], [null, null, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_2", <contenttweaker:paper_plane_2>, [[null, null, null], [null, null, null], [null, <contenttweaker:paper_plane_1>, null]]);
recipes.addHiddenShaped("paper_plane_1", <contenttweaker:paper_plane_1>, [[null, null, null], [null, <contenttweaker:paper_plane_0>, null], [null, null, null]]);

//Overworld related
recipes.addShaped(<contenttweaker:overworld_star>, [[<ore:ingotSignalum>, <ore:ingotElvenElementium>, <ore:ingotLumium>],[<ore:ingotEvilMetal>, <ore:netherStar>, <ore:ingotDemonicMetal>], [<ore:ingotManyullyn>, <ore:ingotTerrasteel>, <ore:ingotHOPGraphite>]]);

//Tome of origin
recipes.addShaped(<contenttweaker:origin_book>, [[<minecraft:piston>, <minecraft:ender_pearl>, <minecraft:piston>],[<minecraft:piston>, <minecraft:book>, <minecraft:piston>], [<minecraft:piston>, <minecraft:bed:*>, <minecraft:piston>]]);