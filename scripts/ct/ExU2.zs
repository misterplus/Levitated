//remove
recipes.removeShaped(<extrautils2:machine> * 4, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],[<minecraft:redstone>, <minecraft:chest>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);

//add
recipes.addShaped(<extrautils2:machine>, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],[<minecraft:redstone>, <enderio:item_material:1>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.addShaped(<extrautils2:machine>, [[<extrautils2:unstableingots>, <deepmoblearning:soot_covered_redstone>, <extrautils2:unstableingots>],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material>, <deepmoblearning:soot_covered_redstone>], [<extrautils2:unstableingots>, <deepmoblearning:soot_covered_redstone>, <extrautils2:unstableingots>]]);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "crafttweaker:assembler"}), [[<enderio:item_alloy_ingot:6>, <contenttweaker:ccb>, <enderio:item_alloy_ingot:6>],[<immersiveengineering:material:20>, <extrautils2:machine>, <immersiveengineering:material:20>], [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot:6>]]);
