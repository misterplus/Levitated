import crafttweaker.block.IBlock;

//Tungsten ore hardness altered
var tungsten = (<techreborn:ore:8> as IBlock).definition;
tungsten.hardness = 100;
tungsten.resistance = 2400;

//Lowered end stone hardness
var endstone = (<minecraft:end_stone> as IBlock).definition;
endstone.hardness = 1.5;

//Portals are now unbreakable
var portal = <blockstate:dimensionalcontrol:dimensional_portal>.block.definition;
portal.hardness = -1;

//ContentCreator doesn't set double slab properties correctly. So we have to set them here
var wyrmwood_slab_double = <blockstate:contentcreator:end_slab_double>.block.definition;
wyrmwood_slab_double.hardness = 2;
wyrmwood_slab_double.resistance = 3;
wyrmwood_slab_double.setHarvestLevel("axe", 0);

var menril_planks_slab_double = <blockstate:contentcreator:menril_planks_slab_double>.block.definition;
menril_planks_slab_double.hardness = 2;
menril_planks_slab_double.resistance = 3;
menril_planks_slab_double.setHarvestLevel("axe", 0);

var end_stone_brick_slab_double = <blockstate:contentcreator:end_stone_brick_slab_double>.block.definition;
end_stone_brick_slab_double.hardness = 1.5;
end_stone_brick_slab_double.resistance = 9;
end_stone_brick_slab_double.setHarvestLevel("pickaxe", 0);