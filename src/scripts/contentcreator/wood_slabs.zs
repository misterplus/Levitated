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

//Menril wood
var menril_planks_slab = GenericBlock.createSlab(IMaterial.wood(), "menril_planks_slab");
menril_planks_slab.setStrength(2.0, 3.0);
menril_planks_slab.setSoundType(<soundtype:wood>);
menril_planks_slab.setHarvestLevel("axe", 0);
menril_planks_slab.register();