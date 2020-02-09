//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
//#Remove
recipes.remove(<minecraft:crafting_table>);
//Don't touch me!
//#Add
recipes.addShaped(<minecraft:furnace>, [[<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>],[<minecraft:end_stone>, null, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);
recipes.addShapeless(<minecraft:crafting_table>, [<ore:plankWood>,<ore:plankWood>,<minecraft:end_bricks>,<minecraft:end_bricks>]);
recipes.addShapeless(<minecraft:end_stone>, [<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"}),<tconstruct:shard>.withTag({Material: "endstone"})]);
//File End
