//remove
recipes.remove(<oeintegration:excavatemodifier>);
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);

//preventing players from getting iron and gold from rails
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);

mods.tconstruct.Melting.removeRecipe(<liquid:lumium>, <thermalfoundation:material:102>);
mods.tconstruct.Melting.removeRecipe(<liquid:signalum>, <thermalfoundation:material:101>);
mods.tconstruct.Melting.removeRecipe(<liquid:enderium>, <thermalfoundation:material:103>);

//add
recipes.addShaped(<oeintegration:excavatemodifier> * 5, [[<ore:ingotLumium>, <ore:slimeball>, <ore:ingotSignalum>],[<ore:ingotRedstoneAlloy>, <ore:ingotManyullyn>, <ore:ingotRedstoneAlloy>], [<ore:ingotSignalum>, <ore:slimeball>, <ore:ingotLumium>]]);
mods.tconstruct.Alloy.addRecipe(<liquid:solder> * 125, [<liquid:tin> * 36, <liquid:lead> * 36]);