import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;

//remove
recipes.remove(<oeintegration:excavatemodifier>);
Alloy.removeRecipe(<liquid:lumium>);
Alloy.removeRecipe(<liquid:signalum>);
Alloy.removeRecipe(<liquid:enderium>);

//preventing players from getting iron and gold from rails
Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);

//Dupe bug
Melting.removeRecipe(<liquid:iron>, <minecraft:minecart>);
Melting.removeRecipe(<liquid:iron>, <techreborn:iron_furnace>);
Melting.removeRecipe(<liquid:copper>, <techreborn:cable>);
Melting.removeRecipe(<liquid:tin>, <techreborn:cable:1>);
Melting.removeRecipe(<liquid:gold>, <techreborn:cable:2>);
Melting.removeRecipe(<liquid:lumium>, <thermalfoundation:material:102>);
Melting.removeRecipe(<liquid:signalum>, <thermalfoundation:material:101>);
Melting.removeRecipe(<liquid:enderium>, <thermalfoundation:material:103>);

//add
recipes.addShaped(<oeintegration:excavatemodifier> * 5, [[<ore:ingotLumium>, <ore:slimeball>, <ore:ingotSignalum>],[<ore:ingotRedstoneAlloy>, <ore:ingotManyullyn>, <ore:ingotRedstoneAlloy>], [<ore:ingotSignalum>, <ore:slimeball>, <ore:ingotLumium>]]);
Alloy.addRecipe(<liquid:solder> * 125, [<liquid:tin> * 36, <liquid:lead> * 36]);