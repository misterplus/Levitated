//add

//remove
recipes.addShaped(<minecraft:end_crystal>, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],[<ore:blockGlassColorless>, <botania:manaresource:1>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <deepmoblearning:living_matter_extraterrestrial>, <ore:blockGlassColorless>]]);
recipes.addShaped(<minecraft:furnace>, [[<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>],[<minecraft:end_stone>, null, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);
recipes.addShapeless(<minecraft:crafting_table>, [<ore:plankWood>,<ore:plankWood>,<minecraft:end_bricks>,<minecraft:end_bricks>]);
recipes.addShapeless(<minecraft:end_stone>, [<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"})]);
recipes.addShaped(<minecraft:comparator>, [[null, <minecraft:redstone_torch>, null],[<minecraft:redstone_torch>, <ore:itemSilicon>, <minecraft:redstone_torch>], [<ore:stone>, <ore:stone>, <ore:stone>]]);