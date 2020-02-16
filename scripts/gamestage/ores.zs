import crafttweaker.item.IIngredient;
var end_ores = [<netherendingores:ore_end_modded_1:1>, <netherendingores:ore_end_modded_1:3>, <netherendingores:ore_end_modded_1:8>] as IIngredient[];

for ore in end_ores{
    mods.orestages.OreStages.addReplacement("end_ores", ore, <minecraft:end_stone>);
}