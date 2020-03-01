//remove
var minerals = ["Silt", "Lapis", "Galena", "Silver", "Bauxite", "Copper", "Uranium", "Platinum", "Cassiterite", "Magnetite", "Iron", "Cinnabar", "Nickel", "Lead", "Gold", "Pyrite", "Quartzite", "Coal"] as string[];
for mineral in minerals {
    mods.immersiveengineering.Excavator.removeMineral(mineral);
}
