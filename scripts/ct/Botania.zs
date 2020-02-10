//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);

//add

//Consuming negative amount of mana results in adding mana to the pool
mods.botania.ManaInfusion.addInfusion(<minecraft:bucket>, <forge:bucketfilled>.withTag({FluidName: "mana_fluid", Amount: 1000}), -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, 
<tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
mods.botania.PureDaisy.addRecipe(<minecraft:cobblestone>, <botania:livingrock>, 300);

//Petal Apothecary now requires end stone
<ore:petal>.addItems([<botania:petal:*>, <botania:mushroom:*>]);
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);