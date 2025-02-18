import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

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
Melting.removeRecipe(<liquid:iron>, <minecraft:hopper>); //craftable using iron alloy
Melting.removeRecipe(<liquid:gold>, <minecraft:light_weighted_pressure_plate>); //rolling machine dupes
Melting.removeRecipe(<liquid:iron>, <minecraft:tripwire>);
Melting.removeRecipe(<liquid:iron>, <minecraft:bucket>);
Melting.removeRecipe(<liquid:iron>, <minecraft:iron_bars>);
Melting.removeRecipe(<liquid:iron>, <minecraft:heavy_weighted_pressure_plate>);
Melting.removeRecipe(<liquid:iron>, <minecraft:iron_door>);
Melting.removeRecipe(<liquid:copper>, <techreborn:cable>);
Melting.removeRecipe(<liquid:tin>, <techreborn:cable:1>);
Melting.removeRecipe(<liquid:gold>, <techreborn:cable:2>);

//Force use of the induction smelter to smelt blends into ingots
Melting.removeRecipe(<liquid:lumium>, <thermalfoundation:material:102>);
Melting.removeRecipe(<liquid:signalum>, <thermalfoundation:material:101>);
Melting.removeRecipe(<liquid:enderium>, <thermalfoundation:material:103>);

//Fix being unable to make gear casts using certain gears and brass or aluminium brass
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:10>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:10>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:11>, <liquid:gold>, 288, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:11>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:11>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:12>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:12>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:13>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:13>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:73>, <liquid:gold>, 288, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:73>, <liquid:brass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:73>, <liquid:alubrass>, 144, true);

//Remove direct trait components as they do not respect actual block drops
for item in scripts.ct.JEI.directs {
    Casting.removeTableRecipe(item);
}

//add
recipes.addShaped(<oeintegration:excavatemodifier> * 5, [[<ore:ingotLumium>, <ore:slimeball>, <ore:ingotSignalum>],[<ore:ingotRedstoneAlloy>, <ore:ingotManyullyn>, <ore:ingotRedstoneAlloy>], [<ore:ingotSignalum>, <ore:slimeball>, <ore:ingotLumium>]]);
Alloy.addRecipe(<liquid:solder> * 125, [<liquid:tin> * 36, <liquid:lead> * 36]);