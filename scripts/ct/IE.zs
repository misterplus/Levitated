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
addMineral("Nether Quartz", 163, 0.10, ["oreNetherQuartz"], [1], [-1]);
addMineral("Certus Quartz", 163, 0.10, ["oreNetherCertusQuartz", "oreNetherChargedCertusQuartz"], [0.92, 0.08], [-1]);
addMineral("Aluminum", 140, 0.15, ["oreNetherAluminum"], [1], [-1]);
addMineral("Nickel", 120, 0.15, ["oreNetherNickel"], [1], [-1]);
addMineral("Silver", 130, 0.15, ["oreNetherSilver"], [1], [-1]);
addMineral("Uranium", 100, 0.20, ["oreNetherUranium"], [1], [-1]);
addMineral("Ardite", 20, 0.25, ["oreNetherArdite"], [1], [-1]);
addMineral("Cobalt", 20, 0.25, ["oreNetherCobalt"], [1], [-1]);

//Rainbow Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:rainbow_ingot>, <ore:ingotUranium>, <immersiveengineering:material:7>, 600, 4096, [<extrautils2:decorativesolid:8>, <ore:itemEnderCrystal>, <ore:itemPrecientCrystal>], "Alloying");

