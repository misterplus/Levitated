#loader contenttweaker
#priority 11

import extrautilities2.Tweaker.IMachineSlot;
import extrautilities2.Tweaker.IMachineRegistry;
import mods.contenttweaker.VanillaFactory;

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
    assembler_slots += IMachineSlot.newItemStackSlot("assembler_slot_item_" + i, true);
}
assembler_slots += IMachineSlot.newFluidSlot("assembler_slot_liquid", 4000, true, null);
var assembler = IMachineRegistry.createNewMachine(
    "assembler",
    10000, 
    2000, 
    assembler_slots, 
    [IMachineSlot.newItemStackSlot("assembler_slot_out")], 
    "contenttweaker:blocks/assembler", 
    "contenttweaker:blocks/assembler_active"
);

var end_trim = VanillaFactory.createBlock("end_trim", <blockmaterial:wood>);
end_trim.blockSoundType = <soundtype:wood>;
end_trim.blockHardness = 5.0;
end_trim.toolClass = "axe";
end_trim.toolLevel = 0;
end_trim.register();

var rainbow_block = VanillaFactory.createBlock("rainbow_block", <blockmaterial:rock>);
rainbow_block.blockSoundType = <soundtype:stone>;
rainbow_block.blockHardness = 100.0;
rainbow_block.blockResistance = 12000.0;
rainbow_block.lightValue = 15;
rainbow_block.toolClass = "pickaxe";
rainbow_block.toolLevel = 4;
rainbow_block.register();

var crystals = ["wither_crystal", "life_crystal", "fire_crystal", "water_crystal"] as string[];
for crystal in crystals {
    var cs = VanillaFactory.createBlock(crystal, <blockmaterial:rock>);
    cs.blockSoundType = <soundtype:stone>;
    cs.blockLayer = "TRANSLUCENT";
    cs.lightValue = 15;
    cs.toolClass = "no tool";
    cs.toolLevel = -1;
    cs.blockHardness = -1;
    cs.blockResistance = 6000000;
    cs.fullBlock = false;
    cs.translucent = true;
    cs.witherProof = true;
    cs.setDropHandler(function(drops, world, position, state, fortune) {
	    drops.clear();
        return;
    });
    cs.register();
}

var leaves = {
    "eden_leaves": "contenttweaker:apple",
    "eden_leaves_fruitless": "minecraft:sapling"
} as string[string];

for leaf in leaves {
    var b = VanillaFactory.createBlock(leaf, <blockmaterial:leaves>);
    b.blockSoundType = <soundtype:plant>;
    b.blockHardness = 0.2;
    b.blockResistance = 0.2;
    b.toolClass = "no tool";
    b.toolLevel = 0;
    b.blockLayer = "CUTOUT_MIPPED";
    b.fullBlock = false;
    b.lightOpacity = 1;
    b.translucent = true;
    b.setDropHandler(function(drops, world, position, state, fortune) {
	    drops.clear();
        drops.add(itemUtils.getItem(leaves[leaf]) % 5);
        return;
    });
    b.register();
}

var dilithium_block = VanillaFactory.createBlock("dilithium_block", <blockmaterial:rock>);
dilithium_block.blockSoundType = <soundtype:glass>;
dilithium_block.blockHardness = 3.0;
dilithium_block.blockResistance = 4.0;
dilithium_block.toolClass = "pickaxe";
dilithium_block.toolLevel = 2;
dilithium_block.blockLayer = "TRANSLUCENT";
dilithium_block.fullBlock = false;
dilithium_block.lightOpacity = 1;
dilithium_block.translucent = true;
dilithium_block.register();