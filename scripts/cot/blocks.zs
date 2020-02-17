#loader contenttweaker
#priority 11

import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineSlot;
import extrautilities2.Tweaker.IMachineRegistry;
import mods.contenttweaker.AxisAlignedBB;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var end_iron = VanillaFactory.createBlock("end_iron", <blockmaterial:rock>);
end_iron.blockSoundType = <soundtype:stone>;
end_iron.blockHardness = 3.0;
end_iron.blockResistance = 15.0;
end_iron.toolClass = "pickaxe";
end_iron.toolLevel = 3;
end_iron.register();

var glitched_obsidian = VanillaFactory.createBlock("glitched_obsidian", <blockmaterial:rock>);
glitched_obsidian.blockSoundType = <soundtype:stone>;
glitched_obsidian.blockHardness = 50.0;
glitched_obsidian.blockResistance = 6000.0;
glitched_obsidian.toolClass = "pickaxe";
glitched_obsidian.toolLevel = 3;
glitched_obsidian.register();

//Assembler
var assembler_slots = [] as IMachineSlot[];
for i in 0 to 3 {
    assembler_slots += extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("assembler_slot_item_" + i, true);
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

var end_trim = VanillaFactory.createBlock("end_trim", <blockmaterial:wood>);
end_trim.blockSoundType = <soundtype:wood>;
end_trim.blockHardness = 5.0;
end_trim.toolClass = "axe";
end_trim.toolLevel = 0;
end_trim.register();