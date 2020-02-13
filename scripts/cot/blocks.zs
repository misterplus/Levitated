#loader contenttweaker
#priority 11

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