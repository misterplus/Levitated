#priority 7

import crafttweaker.oredict.IOreDictEntry;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.OrechidIgnem;
import mods.botania.Orechid;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;

//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);
mods.botania.Apothecary.removeRecipe("orechid");
mods.botania.Apothecary.removeRecipe("orechidIgnem");

//add

//Empty end air bottle
recipes.addShapeless(<minecraft:glass_bottle>, [<botania:manaresource:15>]);

//Blue lotus into mana
ManaInfusion.addInfusion(<stygian:endglow>, <contenttweaker:blue_lotus>, -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, <tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
PureDaisy.addRecipe(<minecraft:end_stone>, <minecraft:cobblestone>, 150);
//Create mushrooms with enbiotic
PureDaisy.addRecipe(<stygian:endglow>, <minecraft:brown_mushroom>, 150);

//Petal apothecary now requires end stone
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);

//Pure daisy can turn end acid into water(ice cause it's block only)
PureDaisy.addRecipe(<liquid:endacid>, <minecraft:ice>, 150);

//Ender iron chunk
ManaInfusion.addInfusion(<contenttweaker:end_iron_chunk>, <contenttweaker:end_iron>, 2500);

//Alternative fire rune recipe
RuneAltar.addRecipe(<botania:rune:1> * 2, [<botania:manaresource:23>, <botania:manaresource>, <tconstruct:firewood:1>, <minecraft:gunpowder>, <minecraft:dragon_breath>], 6000);

//Manapaper
ManaInfusion.addInfusion(<contenttweaker:mana_paper>, <minecraft:paper>, 5000);

//Elven trade for unlocking worlds
ElvenTrade.addRecipe([<contenttweaker:nether_book>], [<minecraft:book>]);
ElvenTrade.addRecipe([<contenttweaker:overworld_book>], [<contenttweaker:overworld_star>]);

//Alternative natura pylon recipe
recipes.addShaped(<botania:pylon:1>, [[null, <botania:manaresource:18>, null],[<botania:manaresource:18>, <botania:pylon>, <botania:manaresource:18>], [null, <extrautils2:ingredients:2>, null]]);

//Alternative glow living wood recipe
recipes.addShapeless(<botania:livingwood:5>, [<botania:livingwood>,<stygian:endglow>]);

//Remove glowstone from redstone
ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
ManaInfusion.addAlchemy(<minecraft:glowstone_dust> * 4, <minecraft:glowstone>, 25);
ManaInfusion.addConjuration(<minecraft:glowstone_dust> * 2, <minecraft:glowstone_dust>, 5000);

//Alternative spark recipe
recipes.addShaped(<botania:spark>, [[null, <ore:petal>, null],[<tconstruct:firewood:1>, <minecraft:gold_nugget>, <tconstruct:firewood:1>], [null, <ore:petal>, null]]);

//Plants
ManaInfusion.addAlchemy(<integrateddynamics:menril_sapling>, <stygian:endcanopysapling>, 10000);
ManaInfusion.addAlchemy(<minecraft:cactus>, <stygian:endcactus>, 10000);
ManaInfusion.addAlchemy(<minecraft:reeds>, <stygian:endvine>, 10000);

//Orechid Ignem
var nether_ores = [<ore:oreQuartz>, <ore:oreArdite>, <ore:oreCobalt>] as IOreDictEntry[];
for ore in nether_ores {
    OrechidIgnem.removeOre(ore);
}
OrechidIgnem.addOre(<ore:oreNetherQuartz>, 7275);
OrechidIgnem.addOre(<ore:oreNetherAluminum>, 3940);
OrechidIgnem.addOre(<ore:oreNetherNickel>, 2275);
OrechidIgnem.addOre(<ore:oreNetherSilver>, 5300);
OrechidIgnem.addOre(<ore:oreNetherCertusQuartz>, 6975);
OrechidIgnem.addOre(<ore:oreNetherChargedCertusQuartz>, 4500);
OrechidIgnem.addOre(<ore:oreNetherUranium>, 1337);
OrechidIgnem.addOre(<ore:oreNetherCobalt>, 2275);
OrechidIgnem.addOre(<ore:oreNetherArdite>, 2275);

//Skulls
RuneAltar.addRecipe(<minecraft:skull:2>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <minecraft:rotten_flesh>, <minecraft:golden_apple>], 22500);
RuneAltar.addRecipe(<minecraft:skull:0>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <ore:bone>, <minecraft:golden_apple>], 22500);
RuneAltar.addRecipe(<minecraft:skull:4>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <ore:gunpowder>, <minecraft:golden_apple>], 22500);

//Orechid
var overworld_ores = [<ore:oreAluminum>, <ore:oreIron>, <ore:oreOsmium>, <ore:oreMythril>, <ore:oreInfusedFire>, <ore:oreTin>, <ore:oreCertusQuartz>, <ore:oreMCropsEssence>, <ore:oreChimerite>, <ore:oreRuby>, <ore:oreCinnabar>, <ore:oreLead>, <ore:oreSapphire>, <ore:oreCoal>, <ore:oreVinteum>, <ore:oreDiamond>, <ore:oreTungsten>, <ore:oreEmerald>, <ore:orePlatinum>, <ore:oreDarkIron>, <ore:oreUranium>, <ore:oreNickel>, <ore:oreLapis>, <ore:oreInfusedEntropy>, <ore:oreAdamantium>, <ore:oreInfusedAir>, <ore:oreInfusedEarth>, <ore:oreFzDarkIron>, <ore:oreAmber>, <ore:oreOlivine>, <ore:oreMithril>, <ore:oreSilver>, <ore:oreInfusedOrder>, <ore:oreGold>, <ore:oreGalena>, <ore:oreBlueTopaz>, <ore:oreDark>, <ore:oreInfusedWater>, <ore:oreZinc>, <ore:oreQuartzBlack>, <ore:oreRedstone>, <ore:oreSulfur>, <ore:oreCopper>, <ore:oreYellorite>, <ore:oreApatite>] as IOreDictEntry[];
for ore in overworld_ores {
    Orechid.removeOre(ore);
}
Orechid.addOre(<ore:oreRuby>, 1100);
Orechid.addOre(<ore:oreBauxite>, 3520);
Orechid.addOre(<ore:oreSapphire>, 1100);
Orechid.addOre(<ore:oreTungsten>, 2200);

//Swap between prismarine shards and nether quartz
ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <minecraft:quartz>, 1200);
ManaInfusion.addAlchemy(<minecraft:quartz>, <minecraft:prismarine_shard>, 1200);

//Swap between brown and red mushrooms
ManaInfusion.addAlchemy(<minecraft:red_mushroom>, <minecraft:brown_mushroom>, 1200);
ManaInfusion.addAlchemy(<minecraft:brown_mushroom>, <minecraft:red_mushroom>, 1200);

//Elytra Dupe
ManaInfusion.addConjuration(<minecraft:elytra> * 2, <minecraft:elytra:0>, 500000);

//Scroll Ignis
RuneAltar.addRecipe(<contenttweaker:scroll_ignis>, [<contenttweaker:scroll>, <thermalfoundation:material:1024>, <botania:rune:13>, <wizardry:devil_dust>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"})], 250000);

//Soul Crystal
RuneAltar.addRecipe(<contenttweaker:crystal>, [<contenttweaker:crystal_wither>, <contenttweaker:crystal_blaze>, <contenttweaker:crystal_magma>, <contenttweaker:crystal_ghast>, <contenttweaker:crystal_pigman>, <enderio:item_material:74>, <enderio:item_material:74>, <enderio:item_material:74>, <enderio:item_material:74>, <enderio:item_material:74>], 500000);

//Apple of Eden
ElvenTrade.addRecipe([<contenttweaker:apple>], [<minecraft:apple>, <minecraft:beetroot>, <minecraft:golden_carrot>, <minecraft:chorus_fruit>, <minecraft:speckled_melon>, <integrateddynamics:menril_berries>]);

//Orechids
mods.botania.Apothecary.addRecipe("orechid", [<ore:petalGray>, <ore:petalGray>, <extrautils2:suncrystal:0>, <ore:petalGreen>, <ore:petalRed>, <botania:rune:15>, <botania:rune:11>, <botania:manaresource:6>, <botania:manaresource:8>]);
mods.botania.Apothecary.addRecipe("orechidIgnem", [<minecraft:netherrack>, <ore:petalRed>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalPink>, <botania:rune:15>, <botania:rune:11>, <botania:manaresource:6>, <botania:manaresource:8>]);