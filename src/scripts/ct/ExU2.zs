//remove
recipes.removeShaped(<extrautils2:machine> * 4, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],[<minecraft:redstone>, <minecraft:chest>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.remove(<extrautils2:chickenring:1>);
recipes.remove(<extrautils2:resonator>);
recipes.remove(<extrautils2:teleporter:1>);
recipes.remove(<extrautils2:quarry>);
recipes.remove(<extrautils2:quarryproxy>);
recipes.remove(<extrautils2:rainbowgenerator:0>);

//add
recipes.replaceAllOccurences(<minecraft:log:0>, <ore:logWood>, <extrautils2:spike_wood>);
recipes.replaceAllOccurences(<minecraft:planks:0>, <ore:plankWood>, <extrautils2:spike_wood>);
recipes.replaceAllOccurences(<ore:dustRedstone>, <ore:ingotRedstoneAlloy>, <extrautils2:machine>);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotElectricalSteel>, <extrautils2:machine>);
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:ingotEnergeticAlloy>, <extrautils2:machine>);
recipes.replaceAllOccurences(<minecraft:redstone_block>, <enderio:block_alloy:3>, <extrautils2:machine>);
recipes.replaceAllOccurences(<minecraft:gold_block>, <enderio:block_alloy:1>, <extrautils2:machine>);
recipes.addShaped(<extrautils2:machine>, [[<ore:ingotElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:ingotElectricalSteel>],[<ore:ingotRedstoneAlloy>, <enderio:item_material:1>, <ore:ingotRedstoneAlloy>], [<ore:ingotElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:ingotElectricalSteel>]]);
var unstable_ingot = <extrautils2:unstableingots:0> | <extrautils2:unstableingots:2>;
recipes.addShaped(<extrautils2:machine>, [[unstable_ingot, <deepmoblearning:soot_covered_redstone>, unstable_ingot],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material>, <deepmoblearning:soot_covered_redstone>], [unstable_ingot, <deepmoblearning:soot_covered_redstone>, unstable_ingot]]);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "crafttweaker:assembler"}), [[<enderio:item_alloy_ingot:6>, <contenttweaker:ccb>, <enderio:item_alloy_ingot:6>],[<immersiveengineering:material:20>, <extrautils2:machine>, <immersiveengineering:material:20>], [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot:6>]]);
recipes.addShaped(<extrautils2:chickenring:1>, [[<ore:dyePurple>, <ore:gemDiamond>, <ore:dyePurple>],[<extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:shulker"}}).transformReplace(<extrautils2:goldenlasso:1>), <extrautils2:chickenring>, <ore:enderpearl>], [<ore:dyePurple>, <ore:gemDiamond>, <ore:dyePurple>]]);
recipes.replaceAllOccurences(<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}, No_Place: 1 as byte}), <botania:flighttiara:*>);
recipes.replaceAllOccurences(<extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}, No_Place: 1 as byte}), <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}}).transformReplace(<extrautils2:goldenlasso:1>));
recipes.addShaped(<extrautils2:resonator>, [[<ore:ingotRedstoneAlloy>, <ore:blockMagma>, <ore:ingotRedstoneAlloy>],[<ore:ingotElectrum>, <ore:gemRedstone>, <ore:ingotElectrum>], [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]]);
recipes.addShaped(<extrautils2:quarry>, [[<ore:plateIridiumAlloy>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}), <ore:plateIridiumAlloy>],[<extrautils2:decorativesolid:3>, <extrautils2:snowglobe:1>, <extrautils2:decorativesolid:3>], [<ore:plateIridiumAlloy>, <ore:endstone>, <ore:plateIridiumAlloy>]]);
recipes.addShaped(<extrautils2:quarryproxy>, [[<ore:plateAdvancedAlloy>, <minecraft:end_rod>, <ore:plateAdvancedAlloy>],[<ore:plateAdvancedAlloy>, <thermalfoundation:tool.pickaxe_platinum>, <ore:plateAdvancedAlloy>], [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]]);

//Scanner mod
var assembler = extrautilities2.Tweaker.IMachineRegistry.getMachine("assembler");
assembler.addRecipe({"assembler_slot_item_0":<contenttweaker:biome_scanner_basic>, "assembler_slot_item_1": <minecraft:map>, "assembler_slot_item_2": <extrautils2:biomemarker>.withTag({Biome: "minecraft:hell"}), "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <scanner:biome_scanner_ultimate>}, 100000, 1200);
assembler.addRecipe({"assembler_slot_item_0":<contenttweaker:terrain_scanner>, "assembler_slot_item_1": <minecraft:map>, "assembler_slot_item_2": <buildinggadgets:buildingtool>, "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <scanner:terrain_scanner>}, 100000, 1200);
assembler.addRecipe({"assembler_slot_item_0":<extrautils2:machine>, "assembler_slot_item_1": <enderio:item_alloy_ingot:3> * 4, "assembler_slot_item_2": <enderio:item_alloy_ingot:2> * 4, "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <scanner:scanner_queue>}, 100000, 1200);
recipes.addShaped(<contenttweaker:terrain_scanner>, [[<ore:ingotDarkSteel>, <contenttweaker:ccb>, <ore:ingotDarkSteel>],[<enderio:item_basic_capacitor>, <extrautils2:machine>, <enderio:item_basic_capacitor>], [<ore:ingotDarkSteel>, <ore:wireCopper>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<contenttweaker:biome_scanner_basic>, [[<ore:ingotEndSteel>, <contenttweaker:ccb>, <ore:ingotEndSteel>],[<ore:wireCopper>, <extrautils2:machine>, <ore:wireCopper>], [<ore:ingotEndSteel>, <enderio:item_basic_capacitor>, <ore:ingotEndSteel>]]);

//Circuits
assembler.addRecipe({"assembler_slot_item_0":<techreborn:ingot:19>, "assembler_slot_item_1": <minecraft:redstone> * 2, "assembler_slot_item_2": <techreborn:cable:5> * 6, "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <techreborn:part:29>}, 10000, 200);
assembler.addRecipe({"assembler_slot_item_0":<techreborn:part:29>, "assembler_slot_item_1": <minecraft:glowstone_dust> * 2, "assembler_slot_item_2": <minecraft:dye:4> * 2, "assembler_slot_liquid": <liquid:redstone> * 500},{"assembler_slot_out": <techreborn:part:30>}, 20000, 400);

//PCB
assembler.addRecipe({"assembler_slot_item_0":<pneumaticcraft:unassembled_pcb>, "assembler_slot_item_1": <pneumaticcraft:transistor> * 3, "assembler_slot_item_2": <pneumaticcraft:capacitor> * 3, "assembler_slot_liquid": <liquid:solder> * 1000},{"assembler_slot_out": <pneumaticcraft:printed_circuit_board>}, 10000, 200);

//Remove byproducts
var crusher = extrautilities2.Tweaker.IMachineRegistry.getMachine("extrautils2:crusher");
crusher.removeRecipe({"input": <ore:oreNickel>});
crusher.addRecipe({"input": <ore:oreNickel>}, {"output": <thermalfoundation:material:69> * 2}, 4000, 200);
crusher.removeRecipe({"input": <ore:oreLead>});
crusher.addRecipe({"input": <ore:oreLead>}, {"output": <techreborn:dust:29> * 2}, 4000, 200);

//Rainbow gen
recipes.addShapeless(<contenttweaker:rainbowgen>, [<extrautils2:rainbowgenerator:1>, <extrautils2:rainbowgenerator:2>]);