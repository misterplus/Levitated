//remove
recipes.remove(<oeintegration:excavatemodifier>);

//preventing players from getting iron and gold from rails
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);

//add
recipes.addShaped(<oeintegration:excavatemodifier>, [[<ore:ingotLumium>, <ore:slimeball>, <ore:ingotSignalum>],[<ore:ingotRedstoneAlloy>, <ore:ingotManyullyn>, <ore:ingotRedstoneAlloy>], [<ore:ingotSignalum>, <ore:slimeball>, <ore:ingotLumium>]]);

