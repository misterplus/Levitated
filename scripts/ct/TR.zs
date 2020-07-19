//remove
recipes.removeShaped(<techreborn:energycrystal>);
recipes.removeShaped(<techreborn:lapotroncrystal>, [[<minecraft:dye:4>, <techreborn:part:29>, <minecraft:dye:4>],[<minecraft:dye:4>, <techreborn:energycrystal>, <minecraft:dye:4>], [<minecraft:dye:4>, <techreborn:part:29>, <minecraft:dye:4>]]);


//add
recipes.replaceAllOccurences(<techreborn:part:29>, <techreborn:part:30>, <techreborn:lapotroncrystal>.withTag({energy: 0}));
recipes.addShaped(<techreborn:energycrystal>, [[<minecraft:redstone>, <techreborn:part:29>, <minecraft:redstone>],[<minecraft:redstone>, <techreborn:gem>, <minecraft:redstone>], [<minecraft:redstone>, <techreborn:part:29>, <minecraft:redstone>]]);

//Refined Steel
mods.techreborn.blastFurnace.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcalciumcarbonate", Amount: 1000}}), null, <ore:itemSlag>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "dist_water", Amount: 1000}}), 300, 107, 1020);