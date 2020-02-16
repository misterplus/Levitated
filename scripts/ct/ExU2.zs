import extrautilities2.Tweaker.IMachine;

//remove
recipes.removeShaped(<extrautils2:machine> * 4, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],[<minecraft:redstone>, <minecraft:chest>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);

//add
recipes.addShaped(<extrautils2:machine>, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],[<minecraft:redstone>, <enderio:item_material:1>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.addShaped(<extrautils2:machine>, [[<extrautils2:unstableingots>, <deepmoblearning:soot_covered_redstone>, <extrautils2:unstableingots>],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material>, <deepmoblearning:soot_covered_redstone>], [<extrautils2:unstableingots>, <deepmoblearning:soot_covered_redstone>, <extrautils2:unstableingots>]]);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "crafttweaker:assembler"}), [[<enderio:item_alloy_ingot:6>, <contenttweaker:ccb>, <enderio:item_alloy_ingot:6>],[<immersiveengineering:material:20>, <extrautils2:machine>, <immersiveengineering:material:20>], [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot:6>]]);

//scanner mod
var assembler = extrautilities2.Tweaker.IMachineRegistry.getMachine("assembler");
assembler.addRecipe({"assembler_slot_item_0":<contenttweaker:biome_scanner_basic>, "assembler_slot_item_1": <minecraft:map>, "assembler_slot_item_2": <extrautils2:biomemarker>.withTag({Biome: "minecraft:hell"}), "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <scanner:biome_scanner_basic>}, 100000, 1200);
assembler.addRecipe({"assembler_slot_item_0":<contenttweaker:terrain_scanner>, "assembler_slot_item_1": <minecraft:map>, "assembler_slot_item_2": <buildinggadgets:buildingtool>, "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <scanner:terrain_scanner>}, 100000, 1200);
recipes.addShaped(<contenttweaker:terrain_scanner>, [[<ore:ingotDarkSteel>, <contenttweaker:ccb>, <ore:ingotDarkSteel>],[<enderio:item_basic_capacitor>, <extrautils2:machine>, <enderio:item_basic_capacitor>], [<ore:ingotDarkSteel>, <ore:wireCopper>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<contenttweaker:biome_scanner_basic>, [[<ore:ingotEndSteel>, <contenttweaker:ccb>, <ore:ingotEndSteel>],[<ore:wireCopper>, <extrautils2:machine>, <ore:wireCopper>], [<ore:ingotEndSteel>, <enderio:item_basic_capacitor>, <ore:ingotEndSteel>]]);