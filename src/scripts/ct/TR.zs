import mods.techreborn.industrialGrinder;
import mods.techreborn.blastFurnace;

//remove
recipes.removeShaped(<techreborn:part:29>);
recipes.removeShaped(<techreborn:part:30>);
recipes.removeShaped(<techreborn:energycrystal>);
recipes.removeShaped(<techreborn:lapotroncrystal>, [[<minecraft:dye:4>, <techreborn:part:29>, <minecraft:dye:4>],[<minecraft:dye:4>, <techreborn:energycrystal>, <minecraft:dye:4>], [<minecraft:dye:4>, <techreborn:part:29>, <minecraft:dye:4>]]);
industrialGrinder.removeInputRecipe(<thermalfoundation:ore:5>);
industrialGrinder.removeInputRecipe(<thermalfoundation:ore:7>);
recipes.remove(<techreborn:scrapbox>);
recipes.removeShaped(<techreborn:dust:38>, [[null, <techreborn:uumatter>, null],[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);
blastFurnace.removeInputRecipe(<techreborn:ingot:19>);

//add
recipes.replaceAllOccurences(<techreborn:part:29>, <techreborn:part:30>, <techreborn:lapotroncrystal>.withTag({energy: 0}));
recipes.addShaped(<techreborn:energycrystal>, [[<minecraft:redstone>, <techreborn:part:29>, <minecraft:redstone>],[<minecraft:redstone>, <techreborn:gem>, <minecraft:redstone>], [<minecraft:redstone>, <techreborn:part:29>, <minecraft:redstone>]]);
blastFurnace.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcalciumcarbonate", Amount: 1000}}), null, <ore:itemSlag>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "distwater", Amount: 1000}}), 300, 107, 1020);
industrialGrinder.addRecipe(<techreborn:dust:34> * 3, <techreborn:smalldust:27>, null, null, <ore:oreNickel>, null, <liquid:fluidmercury> * 1000, 100, 64);
industrialGrinder.addRecipe(<techreborn:dust:64>, <techreborn:smalldust:66> * 6, null, null, <ore:oreIridium>, null, <liquid:water> * 1000, 100, 128);
blastFurnace.addRecipe(<techreborn:ingot:12>, <techreborn:dust:15> * 2, <minecraft:iron_ingot>, <techreborn:dust:13> * 2, 400, 96, 1000);