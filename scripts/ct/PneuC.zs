//remove
mods.pneumaticcraft.explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);

//add
mods.pneumaticcraft.explosioncrafting.addRecipe(<ore:ingotSteel>, <pneumaticcraft:ingot_iron_compressed>, 10);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:ingotSteel>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:enderpearl> * 2, <ore:gunpowder> * 2, <minecraft:rotten_flesh> * 2, <ore:plasticGreen> * 2, <minecraft:water_bucket>], 1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
recipes.addShaped(<pneumaticcraft:pressure_chamber_wall> * 8, [[<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>],[<extrautils2:decorativesolid:3>, null, <extrautils2:decorativesolid:3>], [<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>]]);
mods.pneumaticcraft.pressurechamber.addRecipe([<enderio:item_material>, <extrautils2:decorativesolid:3>, <enderio:item_material:51>, <pneumaticcraft:printed_circuit_board>], 4.5, [<enderio:item_material:1>]);