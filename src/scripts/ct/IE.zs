#priority 6
import mods.immersiveengineering.Excavator.addMineral;

//remove
var minerals = ["Silt", "Lapis", "Galena", "Silver", "Bauxite", "Copper", "Uranium", "Platinum", "Cassiterite", "Magnetite", "Iron", "Cinnabar", "Nickel", "Lead", "Gold", "Pyrite", "Quartzite", "Coal"] as string[];
for mineral in minerals {
    mods.immersiveengineering.Excavator.removeMineral(mineral);
}
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:165>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:166>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:167>);
mods.immersiveengineering.MetalPress.removeRecipe(<techreborn:plates:38>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<thermalfoundation:ore:5>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);
recipes.remove(<immersiveengineering:metal_device0:5>);

//add
//The End
addMineral("Coal", 328, 0.0, ["oreEndCoal"], [1], [1]);
addMineral("Iron", 163, 0.10, ["oreEndIron"], [1], [1]);
addMineral("Redstone", 59, 0.15, ["oreEndRedstone"], [1], [1]);
addMineral("Lapis", 35, 0.15, ["oreEndLapis"], [1], [1]);
addMineral("Gold", 50, 0.20, ["oreEndGold"], [1], [1]);
addMineral("Diamond", 20, 0.25, ["oreEndDiamond"], [1], [1]);
addMineral("Copper", 170, 0.10, ["oreEndCopper"], [1], [1]);
addMineral("Tin", 180, 0.10, ["oreEndTin"], [1], [1]);
addMineral("Lead", 140, 0.15, ["oreEndLead"], [1], [1]);
//Nether
addMineral("Quartz", 326, 0.10, ["oreNetherQuartz", "oreNetherCertusQuartz", "oreNetherChargedCertusQuartz"], [0.5, 0.46, 0.04], [-1]);
addMineral("Aluminum", 140, 0.15, ["oreNetherAluminum"], [1], [-1]);
addMineral("Nickel", 120, 0.15, ["oreNetherNickel"], [1], [-1]);
addMineral("Silver", 130, 0.15, ["oreNetherSilver"], [1], [-1]);
addMineral("Uranium", 100, 0.20, ["oreNetherUranium"], [1], [-1]);
addMineral("Ardite", 20, 0.25, ["oreNetherArdite"], [1], [-1]);
addMineral("Cobalt", 20, 0.25, ["oreNetherCobalt"], [1], [-1]);
//Overworld
addMineral("Bauxite", 140, 0.15, ["oreBauxite"], [1], [0]);
addMineral("Ruby", 70, 0.25, ["oreRuby"], [1], [0]);
addMineral("Sapphire", 70, 0.25, ["oreSapphire"], [1], [0]);
addMineral("Tungsten", 25, 0.30, ["oreTungsten"], [1], [0]);

//Rainbow Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:rainbow_ingot>, <ore:blockUranium>, <immersiveengineering:material:7>, 600, 4096, [<extrautils2:decorativesolid:8>, <ore:itemEnderCrystal>, <ore:itemPrecientCrystal>], "Alloying");

//Early calcium sources
mods.immersiveengineering.Crusher.addRecipe(<techreborn:dust:32>, <ore:stoneMarble>, 4096);
mods.immersiveengineering.Crusher.addRecipe(<techreborn:dust:4>, <ore:stoneBasalt>, 4096);

//Refined steel
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19> * 2, <ore:ingotSteel> * 3, <immersiveengineering:material:7>, 200, 1024, [<techreborn:dust:8> * 2, <immersiveengineering:material:17> * 2], "Alloying");

//Remove platinum from nickel
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:69> * 2, <ore:oreNickel>, 6000);

//Coke oven buff
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6>, 500, <minecraft:coal>, 800);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 5000, <ore:blockCoal>, 7200);
mods.immersiveengineering.CokeOven.addRecipe(<minecraft:coal:1>, 250, <ore:logWood>, 400);

//Pump
recipes.addShaped(<immersiveengineering:metal_device0:5>, [[null, <ore:plateSteel>, null],[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>], [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]]);