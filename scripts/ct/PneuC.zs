//remove
mods.pneumaticcraft.explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
mods.pneumaticcraft.explosioncrafting.removeRecipe(<pneumaticcraft:compressed_iron_block>);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);

//add
recipes.addShaped(<pneumaticcraft:pressure_chamber_wall> * 8, [[<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>],[<extrautils2:decorativesolid:3>, null, <extrautils2:decorativesolid:3>], [<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>]]);
mods.pneumaticcraft.explosioncrafting.addRecipe(<ore:ingotSteel>, <pneumaticcraft:ingot_iron_compressed>, 20);
mods.pneumaticcraft.explosioncrafting.addRecipe(<ore:blockSteel>, <pneumaticcraft:compressed_iron_block>, 20);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:ingotSteel>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:blockSteel>], 2.0, [<pneumaticcraft:compressed_iron_block>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:enderpearl> * 2, <ore:gunpowder> * 2, <minecraft:rotten_flesh> * 2, <ore:plasticGreen> * 2, <minecraft:water_bucket>], 1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
mods.pneumaticcraft.pressurechamber.addRecipe([<enderio:item_material>, <extrautils2:decorativesolid:3>, <enderio:item_material:51>, <pneumaticcraft:printed_circuit_board>], 4.0, [<enderio:item_material:1>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<enderio:item_material>, <extrautils2:decorativesolid:3>, <enderio:item_material:52>, <pneumaticcraft:printed_circuit_board>], 4.5, [<enderio:item_material:53>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<enderio:item_material:66>, <extrautils2:decorativesolid:3>, <enderio:item_material:67>, <pneumaticcraft:printed_circuit_board>], -0.25, [<enderio:item_material:54>]);