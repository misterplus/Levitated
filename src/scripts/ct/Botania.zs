#priority 7
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.inworldcrafting.FluidToItem;
import crafttweaker.oredict.IOreDictEntry;

//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);

//add

//Empty end air bottle
recipes.addShapeless(<minecraft:glass_bottle>, [<botania:manaresource:15>]);

//Blue lotus
FluidToItem.transform(<contenttweaker:blue_lotus>, <fluid:mana_fluid>, [<stygian:endglow>], true);

//Blue lotus into mana
mods.botania.ManaInfusion.addInfusion(<stygian:endglow>, <contenttweaker:blue_lotus>, -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, <tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
mods.botania.PureDaisy.addRecipe(<minecraft:end_stone>, <minecraft:cobblestone>, 150);
//Create mushrooms with enbiotic
mods.botania.PureDaisy.addRecipe(<stygian:endglow>, <minecraft:brown_mushroom>, 150);

//Petal apothecary now requires end stone
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);

//Pure daisy can turn end acid into water(ice cause it's block only)
mods.botania.PureDaisy.addRecipe(<liquid:endacid>, <minecraft:ice>, 150);

//Ender iron chunk
mods.botania.ManaInfusion.addInfusion(<contenttweaker:end_iron_chunk>, <contenttweaker:end_iron>, 2500);

//Alternative fire rune recipe
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2,[<botania:manaresource:23>, <botania:manaresource>, <tconstruct:firewood:1>, <minecraft:gunpowder>, <minecraft:dragon_breath>], 6000);

//Manapaper
mods.botania.ManaInfusion.addInfusion(<contenttweaker:mana_paper>, <minecraft:paper>, 5000);

//Elven trade for unlocking worlds
mods.botania.ElvenTrade.addRecipe([<contenttweaker:nether_book>], [<minecraft:book>]);
mods.botania.ElvenTrade.addRecipe([<contenttweaker:overworld_book>], [<contenttweaker:overworld_star>]);

//Alternative natura pylon recipe
recipes.addShaped(<botania:pylon:1>, [[null, <botania:manaresource:18>, null],[<botania:manaresource:18>, <botania:pylon>, <botania:manaresource:18>], [null, <extrautils2:ingredients:2>, null]]);

//Alternative glow living wood recipe
recipes.addShapeless(<botania:livingwood:5>, [<botania:livingwood>,<stygian:endglow>]);

//Remove glowstone from redstone
mods.botania.ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:glowstone_dust> * 4, <minecraft:glowstone>, 25);
mods.botania.ManaInfusion.addConjuration(<minecraft:glowstone_dust> * 2, <minecraft:glowstone_dust>, 5000);

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
mods.botania.OrechidIgnem.addOre(<ore:oreNetherQuartz>, 7275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherAluminum>, 3940);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherNickel>, 2275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherSilver>, 5300);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherCertusQuartz>, 6975);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherChargedCertusQuartz>, 4500);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherUranium>, 1337);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherCobalt>, 2275);
mods.botania.OrechidIgnem.addOre(<ore:oreNetherArdite>, 2275);

//Skulls
mods.botania.RuneAltar.addRecipe(<minecraft:skull:2>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <minecraft:rotten_flesh>, <minecraft:golden_apple>], 22500);
mods.botania.RuneAltar.addRecipe(<minecraft:skull:0>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <ore:bone>, <minecraft:golden_apple>], 22500);
mods.botania.RuneAltar.addRecipe(<minecraft:skull:4>, [<minecraft:skull:1>, <ore:elvenPixieDust>, <ore:gemPrismarine>, <ore:gunpowder>, <minecraft:golden_apple>], 22500);

//Orechid
var overworld_ores = [<ore:oreAluminum>, <ore:oreIron>, <ore:oreOsmium>, <ore:oreMythril>, <ore:oreInfusedFire>, <ore:oreTin>, <ore:oreCertusQuartz>, <ore:oreMCropsEssence>, <ore:oreChimerite>, <ore:oreRuby>, <ore:oreCinnabar>, <ore:oreLead>, <ore:oreSapphire>, <ore:oreCoal>, <ore:oreVinteum>, <ore:oreDiamond>, <ore:oreTungsten>, <ore:oreEmerald>, <ore:orePlatinum>, <ore:oreDarkIron>, <ore:oreUranium>, <ore:oreNickel>, <ore:oreLapis>, <ore:oreInfusedEntropy>, <ore:oreAdamantium>, <ore:oreInfusedAir>, <ore:oreInfusedEarth>, <ore:oreFzDarkIron>, <ore:oreAmber>, <ore:oreOlivine>, <ore:oreMithril>, <ore:oreSilver>, <ore:oreInfusedOrder>, <ore:oreGold>, <ore:oreGalena>, <ore:oreBlueTopaz>, <ore:oreDark>, <ore:oreInfusedWater>, <ore:oreZinc>, <ore:oreQuartzBlack>, <ore:oreRedstone>, <ore:oreSulfur>, <ore:oreCopper>, <ore:oreYellorite>, <ore:oreApatite>] as IOreDictEntry[];
for ore in overworld_ores {
    mods.botania.Orechid.removeOre(ore);
}
mods.botania.Orechid.addOre(<ore:oreRuby>, 1100);
mods.botania.Orechid.addOre(<ore:oreBauxite>, 3520);
mods.botania.Orechid.addOre(<ore:oreSapphire>, 1100);
mods.botania.Orechid.addOre(<ore:oreTungsten>, 2200);