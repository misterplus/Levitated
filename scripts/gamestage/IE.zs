import crafttweaker.item.IIngredient;

val ie_ores = [<netherendingores:ore_end_modded_1:1>,<netherendingores:ore_end_modded_1>,<netherendingores:ore_end_modded_1:3>,<netherendingores:ore_end_modded_1:5>,<netherendingores:ore_end_modded_1:7>,<netherendingores:ore_end_modded_1:12>] as IIngredient[];

for ore in ie_ores {
    mods.orestages.OreStages.addReplacement("IE", ore, <minecraft:end_stone>);
}
