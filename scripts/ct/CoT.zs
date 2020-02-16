//ccb related
recipes.addShapeless(<contenttweaker:pottery_clay> * 2,[<ore:clay>, <minecraft:dye:15>]);
recipes.addShaped(<contenttweaker:ccb_base>, [[<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>],[<minecraft:redstone>, <contenttweaker:clay_board>, <minecraft:redstone>], [<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>]]);
furnace.addRecipe(<contenttweaker:ccb>, <contenttweaker:ccb_base>, 0);
recipes.addShaped(<contenttweaker:clay_board>, [[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>, null],[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>, null], [null, null, null]]);

//Solder related
recipes.addShapeless(<contenttweaker:solder_powder> * 2, [<botania:pestleandmortar>.reuse(),<ore:dustLead>,<ore:dustTin>]);
recipes.addShaped(<contenttweaker:solder_bucket>, [[null, <contenttweaker:solder_powder>, null],[<contenttweaker:solder_powder>, <minecraft:bucket>, <contenttweaker:solder_powder>], [null, <contenttweaker:solder_powder>, null]]);