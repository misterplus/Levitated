#loader preinit
import mods.contenttweaker.VanillaFactory;
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial;

//Wyrmwood
var end_stone_brick_slab = GenericBlock.createSlab(IMaterial.rock(), "end_stone_brick_slab");
end_stone_brick_slab.setStrength(1.5, 9.0);
end_stone_brick_slab.setSoundType(<soundtype:stone>);
end_stone_brick_slab.setHarvestLevel("pickaxe", 0);
end_stone_brick_slab.register();

var end_stone_brick_stairs = GenericBlock.createStairs("end_stone_brick_stairs", <blockstate:minecraft:stone_stairs>);
end_stone_brick_stairs.setStrength(1.5, 9.0);
end_stone_brick_stairs.setSoundType(<soundtype:stone>);
end_stone_brick_stairs.setHarvestLevel("pickaxe", 0);
end_stone_brick_stairs.register();