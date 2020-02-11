#priority 8

//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);

//add

//Consuming negative amount of mana results in adding mana to the pool
mods.botania.ManaInfusion.addInfusion(<minecraft:bucket>, <forge:bucketfilled>.withTag({FluidName: "mana_fluid", Amount: 1000}), -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, <tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
mods.botania.PureDaisy.addRecipe(<minecraft:end_stone>, <minecraft:cobblestone>, 300);
//Create mushrooms with enbiotic
mods.botania.PureDaisy.addRecipe(<stygian:endglow>, <minecraft:brown_mushroom>, 300);
//Create sand with leachstone
mods.botania.PureDaisy.addRecipe(<stygian:endmagma>, <minecraft:sand>, 300);

//Petal Apothecary now requires end stone
<ore:petal>.addItems([<botania:petal:*>, <botania:mushroom:*>]);
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);

//Add end seeds to the ore dictionary so it works in the petal apothecary
<ore:seed>.addItems([<contenttweaker:end_seeds>]);

//Pure Daisy can turn end acid into water(ice cause it's block only)
mods.botania.PureDaisy.addRecipe(<liquid:endacid>, <minecraft:ice>, 600);

//Ender Iron Chunk recipe
mods.botania.ManaInfusion.addInfusion(<contenttweaker:end_iron_chunk>, <contenttweaker:end_iron>, 2500);

//Crude Blast Furnace block recipe
mods.botania.RuneAltar.addRecipe(<immersiveengineering:stone_decoration:1> * 3,[<minecraft:brick_block>, <wizardry:nacre_block_brick>, <contenttweaker:end_iron_chunk>], 5000);