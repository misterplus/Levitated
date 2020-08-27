//remove
recipes.remove(<minecraft:crafting_table>);
recipes.remove(<naturescompass:naturescompass>);

//add
recipes.replaceAllOccurences(<ore:cobblestone>, <ore:endstone>, <minecraft:dispenser>);
recipes.replaceAllOccurences(<ore:cobblestone>, <ore:endstone>, <minecraft:dropper>);
recipes.replaceAllOccurences(<ore:cobblestone>, <ore:endstone>, <minecraft:furnace>);
recipes.addShaped(<minecraft:end_crystal>, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],[<ore:blockGlassColorless>, <botania:manaresource:1>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <deepmoblearning:living_matter_extraterrestrial>, <ore:blockGlassColorless>]]);
recipes.addShaped(<minecraft:furnace>, [[<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>],[<minecraft:end_stone>, null, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);
recipes.addShapeless(<minecraft:crafting_table>, [<ore:plankWood>,<ore:plankWood>,<minecraft:end_bricks>,<minecraft:end_bricks>]);
recipes.addShapeless(<minecraft:end_stone>, [<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"})]);
recipes.addShaped(<minecraft:comparator>, [[null, <minecraft:redstone_torch>, null],[<minecraft:redstone_torch>, <ore:itemSilicon>, <minecraft:redstone_torch>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

//Nature's Compass
recipes.addShaped(<naturescompass:naturescompass>, [[<minecraft:chorus_flower>, <botania:manaresource:0>, <stygian:endcanopysapling>],[<botania:manaresource:0>, <minecraft:compass>, <botania:manaresource:0>], [<stygian:endvine>, <botania:manaresource:0>, <stygian:endglow>]]);

//Waystones
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <botania:manaresource:1>, <waystones:warp_stone>);
recipes.replaceAllOccurences(<minecraft:emerald>, <botania:manaresource:2>, <waystones:warp_stone>);
recipes.replaceAllOccurences(<minecraft:stonebrick>, <minecraft:purpur_block>, <waystones:waystone>);
recipes.replaceAllOccurences(<minecraft:obsidian>, <minecraft:end_bricks>, <waystones:waystone>);
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <botania:manaresource:1>, <waystones:return_scroll>);
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <botania:manaresource:1>, <waystones:bound_scroll>);
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <botania:manaresource:1>, <waystones:warp_scroll>);