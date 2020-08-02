import crafttweaker.block.IBlock;

//Tungsten ore hardness altered
var tungsten = (<techreborn:ore:8> as IBlock).definition;
tungsten.hardness = 100;
tungsten.resistance = 2400;