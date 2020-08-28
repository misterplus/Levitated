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