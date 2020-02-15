#loader contenttweaker
#priority 11

import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineSlot;
import extrautilities2.Tweaker.IMachineRegistry;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var end_iron = VanillaFactory.createBlock("end_iron", <blockmaterial:rock>);
end_iron.setBlockHardness(3.0);
end_iron.setBlockResistance(15.0);
end_iron.setToolClass("pickaxe");
end_iron.setToolLevel(3);
end_iron.register();

var glitched_obsidian = VanillaFactory.createBlock("glitched_obsidian", <blockmaterial:rock>);
glitched_obsidian.setBlockHardness(50.0);
glitched_obsidian.setBlockResistance(6000.0);
glitched_obsidian.setToolClass("pickaxe");
glitched_obsidian.setToolLevel(3);
glitched_obsidian.register();

//Assembler
var assembler_slots = [] as IMachineSlot[];
for i in 0 to 3 {
    assembler_slots += extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("assembler_slot_" + i, true);
}
assembler_slots += extrautilities2.Tweaker.IMachineSlot.newFluidSlot("assembler_slot_liquid", 4000, true, null);
var assembler = extrautilities2.Tweaker.IMachineRegistry.createNewMachine(
    "assembler",
    10000, 
    2000, 
    assembler_slots, 
    [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("assembler_slot_out")], 
    "contenttweaker:blocks/assembler", 
    "contenttweaker:blocks/assembler_active"
);