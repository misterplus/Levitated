#priority 8
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.inworldcrafting.FluidToItem;
import crafttweaker.oredict.IOreDictEntry;

//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);
recipes.remove(<botania:rfgenerator>);

//add

//Blue lotus
FluidToItem.transform(<contenttweaker:blue_lotus>, <fluid:mana_fluid>, [<stygian:endglow>], true);

//Blue lotus into mana
mods.botania.ManaInfusion.addInfusion(<stygian:endglow>, <contenttweaker:blue_lotus>, -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, <tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
mods.botania.PureDaisy.addRecipe(<minecraft:end_stone>, <minecraft:cobblestone>, 300);
//Create mushrooms with enbiotic
mods.botania.PureDaisy.addRecipe(<stygian:endglow>, <minecraft:brown_mushroom>, 300);

//Petal apothecary now requires end stone
<ore:petal>.addItems([<botania:petal:*>, <botania:mushroom:*>]);
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);

//Add end seeds to the ore dictionary so it works in the petal apothecary
<ore:seed>.addItems([<contenttweaker:end_seeds>]);

//Pure daisy can turn end acid into water(ice cause it's block only)
mods.botania.PureDaisy.addRecipe(<liquid:endacid>, <minecraft:ice>, 300);

//Ender iron chunk
mods.botania.ManaInfusion.addInfusion(<contenttweaker:end_iron_chunk>, <contenttweaker:end_iron>, 2500);

//Alternative fire rune recipe
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2,[<botania:manaresource:23>, <botania:manaresource>, <tconstruct:firewood:1>, <minecraft:gunpowder>, <minecraft:dragon_breath>], 6000);

//Manapaper
mods.botania.ManaInfusion.addInfusion(<contenttweaker:mana_paper>, <minecraft:paper>, 5000);

//Elven trade for unlocking the nether
mods.botania.ElvenTrade.addRecipe([<contenttweaker:nether_book>], [<minecraft:book>]);

//Alternative natura pylon recipe
recipes.addShaped(<botania:pylon:1>, [[null, <botania:manaresource:18>, null],[<botania:manaresource:18>, <botania:pylon>, <botania:manaresource:18>], [null, <extrautils2:ingredients:2>, null]]);

//Alternative glow living wood recipe
recipes.addShapeless(<botania:livingwood:5>, [<botania:livingwood>,<stygian:endglow>]);

//Remove glowstone from redstone
mods.botania.ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:glowstone_dust> * 4, <minecraft:glowstone>, 25);
mods.botania.ManaInfusion.addConjuration(<minecraft:glowstone_dust> * 2, <minecraft:glowstone_dust>, 5000);

//Orechid Endium
<ore:oreEndCopper>.addItems([<netherendingores:ore_end_modded_1:1>]);
<ore:oreEndLead>.addItems([<netherendingores:ore_end_modded_1:3>]);
<ore:oreEndTin>.addItems([<netherendingores:ore_end_modded_1:8>]);
<ore:oreEndCoal>.addItems([<netherendingores:ore_end_vanilla:0>]);
<ore:oreEndDiamond>.addItems([<netherendingores:ore_end_vanilla:1>]);
<ore:oreEndGold>.addItems([<netherendingores:ore_end_vanilla:3>]);
<ore:oreEndIron>.addItems([<netherendingores:ore_end_vanilla:4>]);
<ore:oreEndLapis>.addItems([<netherendingores:ore_end_vanilla:5>]);
<ore:oreEndRedstone>.addItems([<netherendingores:ore_end_vanilla:6>]);

//Alternative spark recipe
recipes.addShaped(<botania:spark>, [[null, <ore:petal>, null],[<tconstruct:firewood:1>, <minecraft:gold_nugget>, <tconstruct:firewood:1>], [null, <ore:petal>, null]]);

//Glitched obsidian
var end_plate = AgglomerationMultiblock.create().checker(<minecraft:obsidian>, <minecraft:purpur_block>);
var glitched_oby = AgglomerationRecipe.create().output(<contenttweaker:glitched_obsidian>).inputs([<deepmoblearning:glitch_infused_ingot>, <minecraft:obsidian>]).manaCost(100000).multiblock(end_plate);
Agglomeration.addRecipe(glitched_oby);

//Plants
mods.botania.ManaInfusion.addAlchemy(<integrateddynamics:menril_sapling>, <stygian:endcanopysapling>, 10000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:cactus>, <stygian:endcactus>, 10000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:reeds>, <stygian:endvine>, 10000);

//Porkchop
mods.botania.ManaInfusion.addConjuration(<minecraft:stone>, <minecraft:stone>, 1000);

//Orechid Ignem
var nether_ores = [<ore:oreQuartz>, <ore:oreArdite>, <ore:oreCobalt>] as IOreDictEntry[];
for ore in nether_ores {
    mods.botania.OrechidIgnem.removeOre(ore);
}

<ore:oreNetherQuartz>.addItems([<minecraft:quartz_ore>]);
<ore:oreNetherAluminum>.addItems([<netherendingores:ore_nether_modded_1:0>]);
<ore:oreNetherNickel>.addItems([<netherendingores:ore_nether_modded_1:5>]);
<ore:oreNetherSilver>.addItems([<netherendingores:ore_nether_modded_1:7>]);
<ore:oreNetherCertusQuartz>.addItems([<netherendingores:ore_nether_modded_1:9>]);
<ore:oreNetherUranium>.addItems([<netherendingores:ore_nether_modded_1:12>]);
<ore:oreNetherCobalt>.addItems([<tconstruct:ore>]);
<ore:oreNetherArdite>.addItems([<tconstruct:ore:1>]);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherQuartz>, 7275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherAluminum>, 3940);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherNickel>, 2275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherSilver>, 5300);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherCertusQuartz>, 6975);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherUranium>, 1337);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherCobalt>, 2275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherArdite>, 2275);