#loader preinit
import mods.contenttweaker.VanillaFactory;
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial;

//Wyrmwood
var wyrmwood_slab = GenericBlock.createSlab(IMaterial.wood(), "wyrmwood_slab");
wyrmwood_slab.setStrength(2.0, 3.0);
wyrmwood_slab.setSoundType(<soundtype:wood>);
wyrmwood_slab.setHarvestLevel("axe", 0);
wyrmwood_slab.register();

var wyrmwood_stairs = GenericBlock.createStairs("wyrmwood_stairs", <blockstate:minecraft:oak_stairs>);
wyrmwood_stairs.register();

var wyrmwood_fence = GenericBlock.createFence(IMaterial.wood(), "wyrmwood_fence");
wyrmwood_fence.setStrength(2.0, 3.0);
wyrmwood_fence.setSoundType(<soundtype:wood>);
wyrmwood_fence.setHarvestLevel("axe", 0);
wyrmwood_fence.register();

var wyrmwood_fence_gate = GenericBlock.createFenceGate(IMaterial.wood(), "wyrmwood_fence_gate");
wyrmwood_fence_gate.setStrength(2.0, 3.0);
wyrmwood_fence_gate.setSoundType(<soundtype:wood>);
wyrmwood_fence_gate.setHarvestLevel("axe", 0);
wyrmwood_fence_gate.register();

//Menril wood
var menril_slab = GenericBlock.createSlab(IMaterial.wood(), "menril_slab");
menril_slab.setStrength(2.0, 3.0);
menril_slab.setSoundType(<soundtype:wood>);
menril_slab.setHarvestLevel("axe", 0);
menril_slab.register();

var menril_fence = GenericBlock.createFence(IMaterial.wood(), "menril_fence");
menril_fence.setStrength(2.0, 3.0);
menril_fence.setSoundType(<soundtype:wood>);
menril_fence.setHarvestLevel("axe", 0);
menril_fence.register();

var menril_fence_gate = GenericBlock.createFenceGate(IMaterial.wood(), "menril_fence_gate");
menril_fence_gate.setStrength(2.0, 3.0);
menril_fence_gate.setSoundType(<soundtype:wood>);
menril_fence_gate.setHarvestLevel("axe", 0);
menril_fence_gate.register();