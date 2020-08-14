import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.integrateddynamics.Squeezer;

function remove (item as IItemStack, f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        recipes.remove(def.makeStack(i));
    }
}
function removeOnly (item as IItemStack, r as int[]) {
    var def = item.definition;
    for i in r {
        recipes.remove(def.makeStack(i));
    }
}
function plating (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.RollingMachine.addRecipe(output, 20, 20, 200, input * 1);
}
function sheeting (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.RollingMachine.addRecipe(output, 300, 200, 400, input * 1);
}
function plateBlock (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.PlatePresser.addRecipe(output * 4, input * 1);
}

//remove
mods.advancedrocketry.RollingMachine.clear();
mods.advancedrocketry.PlatePresser.clear();
var r = [<enderio:item_material:9>, <enderio:item_material:10>, <appliedenergistics2:material:40>, <libvulpes:productgear:7>, <advancedrocketry:productgear>, <advancedrocketry:productgear:1>, <thermalfoundation:material:288>] as IItemStack[];
for item in r {
    recipes.remove(item);
}
recipes.removeShapeless(<immersiveengineering:metal:*>, [<immersiveengineering:tool:0>], true);
recipes.removeShapeless(<immersiveengineering:metal:*>, [<immersiveengineering:sheetmetal:*>], true);
recipes.removeShapeless(<libvulpes:productingot:5> * 9, [ <techreborn:storage2:9>]);
recipes.removeShapeless(<thermalfoundation:material:129> * 9, [ <techreborn:storage2:9>]);
recipes.removeShapeless(<libvulpes:productingot:4> * 9, [ <techreborn:storage2:8>]);
recipes.removeShapeless(<thermalfoundation:material:128> * 9, [ <techreborn:storage2:8>]);
recipes.removeShapeless(<thermalfoundation:material:163> * 9, [ <techreborn:storage:14>]);
recipes.removeShapeless(<libvulpes:productingot:10> * 9, [ <techreborn:storage:13>]);
recipes.removeShapeless(<thermalfoundation:material:135> * 9, [ <techreborn:storage:13>]);
recipes.removeShapeless(<thermalfoundation:material:162> * 9, [ <techreborn:storage:12>]);
recipes.removeShapeless(<thermalfoundation:material:133> * 9, [ <techreborn:storage:11>]);
recipes.removeShapeless(<thermalfoundation:material:134> * 9, [ <techreborn:storage:9>]);
recipes.removeShapeless(<thermalfoundation:material:161> * 9, [ <techreborn:storage:7>]);
recipes.removeShapeless(<thermalfoundation:material:131> * 9, [ <techreborn:storage:6>]);
recipes.removeShapeless(<libvulpes:productingot:6> * 9, [ <techreborn:storage:4>]);
recipes.removeShapeless(<thermalfoundation:material:160> * 9, [ <techreborn:storage:4>]);
recipes.removeShapeless(<libvulpes:productingot:7> * 9, [ <techreborn:storage:2>]);
recipes.removeShapeless(<libvulpes:productingot:9> * 9, [ <techreborn:storage:1>]);
recipes.removeShapeless(<thermalfoundation:material:132> * 9, [ <techreborn:storage:1>]);
recipes.removeShapeless(<thermalfoundation:material:130> * 9, [ <techreborn:storage>]);
recipes.removeShapeless(<thermalfoundation:material:164> * 9, [ <immersiveengineering:storage:6>]);
recipes.removeShapeless(<immersiveengineering:metal:5> * 9, [ <immersiveengineering:storage:5>]);
recipes.removeShapeless(<libvulpes:productnugget:7> * 9, [ <techreborn:ingot:14>]);
recipes.removeShapeless(<libvulpes:productnugget:5> * 9, [ <techreborn:ingot:13>]);
recipes.removeShapeless(<thermalfoundation:material:193> * 9, [ <techreborn:ingot:13>]);
recipes.removeShapeless(<libvulpes:productnugget:6> * 9, [ <techreborn:ingot:12>]);
recipes.removeShapeless(<thermalfoundation:material:224> * 9, [ <techreborn:ingot:12>]);
recipes.removeShapeless(<thermalfoundation:material:194> * 9, [ <techreborn:ingot:11>]);
recipes.removeShapeless(<thermalfoundation:material:198> * 9, [ <techreborn:ingot:10>]);
recipes.removeShapeless(<thermalfoundation:material:197> * 9, [ <techreborn:ingot:9>]);
recipes.removeShapeless(<thermalfoundation:material:195> * 9, [ <techreborn:ingot:8>]);
recipes.removeShapeless(<thermalfoundation:material:199> * 9, [ <techreborn:ingot:7>]);
recipes.removeShapeless(<libvulpes:productnugget:10> * 9, [ <techreborn:ingot:7>]);
recipes.removeShapeless(<thermalfoundation:material:226> * 9, [ <techreborn:ingot:6>]);
recipes.removeShapeless(<thermalfoundation:material:225> * 9, [ <techreborn:ingot:5>]);
recipes.removeShapeless(<libvulpes:productnugget:4> * 9, [ <techreborn:ingot:4>]);
recipes.removeShapeless(<thermalfoundation:material:192> * 9, [ <techreborn:ingot:4>]);
recipes.removeShapeless(<thermalfoundation:material:227> * 9, [ <techreborn:ingot:2>]);
recipes.removeShapeless(<thermalfoundation:material:196> * 9, [ <techreborn:ingot>]);
recipes.removeShapeless(<libvulpes:productnugget:9> * 9, [ <techreborn:ingot>]);
recipes.removeShapeless(<thermalfoundation:material:228> * 9, [ <immersiveengineering:metal:6>]);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:23>);
remove(<thermalfoundation:material>, 22, 26);
remove(<thermalfoundation:material>, 256, 265);
remove(<thermalfoundation:material>, 288, 296);
remove(<advancedrocketry:productrod>, 0, 2);
remove(<immersiveengineering:material>, 1, 4);
removeOnly(<libvulpes:productrod:4>, [1, 4, 6, 7, 10] as int[]);

//add
recipes.addShaped(<thermalfoundation:material:22>, [[null, <ore:stickWood>, null],[<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<thermalfoundation:material:23>, [[null, <ore:stone>, null],[<ore:stone>, <ore:gearWood>, <ore:stone>], [null, <ore:stone>, null]]);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:23>, <thermalfoundation:material:22>, <liquid:stone>, 288, true, 100);
sheeting(<ore:plateIron>, <libvulpes:productsheet:1>);
sheeting(<ore:plateCopper>, <libvulpes:productsheet:4>);
sheeting(<ore:plateSteel>, <libvulpes:productsheet:6>);
sheeting(<ore:plateTitanium>, <libvulpes:productsheet:7>);
sheeting(<ore:plateAluminum>, <libvulpes:productsheet:9>);
sheeting(<ore:plateTitaniumAluminide>, <advancedrocketry:productsheet:0>);
sheeting(<ore:plateTitaniumIridium>, <advancedrocketry:productsheet:1>);
plating(<ore:ingotAluminum>, <techreborn:plates:17>);
plating(<ore:ingotTitanium>, <techreborn:plates:31>);
plating(<ore:ingotCopper>, <techreborn:plates:21>);
plating(<ore:ingotBronze>, <techreborn:plates:19>);
plating(<ore:ingotSilver>, <techreborn:plates:28>);
plating(<ore:ingotIridium>, <techreborn:plates:24>);
plating(<ore:ingotUranium>, <immersiveengineering:metal:35>);
plating(<ore:ingotPlatinum>, <techreborn:plates:27>);
plating(<ore:ingotLead>, <techreborn:plates:25>);
plating(<ore:ingotSteel>, <techreborn:plates:29>);
plating(<ore:ingotElectrum>, <techreborn:plates:22>);
plating(<ore:ingotTin>, <techreborn:plates:30>);
plating(<ore:ingotNickel>, <techreborn:plates:26>);
plating(<ore:ingotInvar>, <techreborn:plates:23>);
plating(<ore:ingotConstantan>, <immersiveengineering:metal:36>);
plating(<ore:ingotLumium>, <thermalfoundation:material:358>);
plating(<ore:ingotSignalum>, <thermalfoundation:material:357>);
plating(<ore:ingotEnderium>, <thermalfoundation:material:359>);
plating(<ore:ingotMithril>, <thermalfoundation:material:328>);
plating(<ore:ingotAdvancedAlloy>, <techreborn:plates:36>);
plating(<ore:ingotRefinedIron>, <techreborn:plates:35>);
plating(<ore:ingotGold>, <techreborn:plates:1>);
plating(<ore:ingotTungstensteel>, <techreborn:plates:33>);
plating(<ore:ingotBrass>, <techreborn:plates:18>);
plating(<ore:ingotIron>, <techreborn:plates:0>);
plating(<ore:ingotTungsten>, <techreborn:plates:32>);
plating(<ore:ingotChrome>, <techreborn:plates:20>);
plating(<ore:ingotSilicon>, <techreborn:plates:11>);
plating(<ore:ingotTitaniumAluminide>, <advancedrocketry:productplate:0>);
plating(<ore:ingotTitaniumIridium>, <advancedrocketry:productplate:1>);
plating(<ore:ingotCarbon>, <techreborn:plates:2>);
mods.advancedrocketry.RollingMachine.addRecipe(<advancedrocketry:pressuretank:0>, 100, 1, 100, <ore:sheetIron> * 2);
mods.advancedrocketry.RollingMachine.addRecipe(<advancedrocketry:pressuretank:1>, 200, 2, 200, <ore:sheetSteel> * 2);
mods.advancedrocketry.RollingMachine.addRecipe(<advancedrocketry:pressuretank:2>, 300, 4, 300, <ore:sheetAluminum> * 2);
mods.advancedrocketry.RollingMachine.addRecipe(<advancedrocketry:pressuretank:3>, 400, 8, 400, <ore:sheetTitanium> * 2);
mods.techreborn.plateBendingMachine.addRecipe(<immersiveengineering:metal:36>, <ore:ingotConstantan>, 40, 25);
mods.techreborn.plateBendingMachine.addRecipe(<advancedrocketry:productplate:0>, <ore:ingotTitaniumAluminide>, 40, 25);
mods.techreborn.plateBendingMachine.addRecipe(<advancedrocketry:productplate:1>, <advancedrocketry:productingot:1>, 40, 25);
plateBlock(<ore:blockGold>, <techreborn:plates:1>);
plateBlock(<ore:blockIron>, <techreborn:plates:0>);
plateBlock(<ore:blockSilver>, <techreborn:plates:28>);
plateBlock(<ore:blockAluminum>, <techreborn:plates:17>);
plateBlock(<ore:blockTitanium>, <techreborn:plates:31>);
plateBlock(<ore:blockIridium>, <techreborn:plates:24>);
plateBlock(<ore:blockCopper>, <techreborn:plates:21>);
plateBlock(<ore:blockTin>, <techreborn:plates:30>);
plateBlock(<ore:blockMithril>, <thermalfoundation:material:328>);
plateBlock(<ore:blockUranium>, <immersiveengineering:metal:35>);
plateBlock(<ore:blockNickel>, <techreborn:plates:26>);
plateBlock(<ore:blockTungsten>, <techreborn:plates:32>);
plateBlock(<ore:blockPlatinum>, <techreborn:plates:27>);
plateBlock(<ore:blockLead>, <techreborn:plates:25>);
Squeezer.addRecipe(<netherendingores:ore_end_vanilla:0>, <minecraft:coal:0> * 4, 1.0, <minecraft:coal:0>, 0.5, <minecraft:coal:0>, 0.5);
Squeezer.addRecipe(<netherendingores:ore_end_vanilla:6>, <minecraft:redstone> * 8, 1.0, <minecraft:redstone> * 2, 0.5, <minecraft:redstone> * 2, 0.5);
Squeezer.addRecipe(<netherendingores:ore_end_vanilla:5>, <minecraft:dye:4> * 8, 1.0, <minecraft:dye:4> * 2, 0.5, <minecraft:dye:4> * 2, 0.5);
Squeezer.addRecipe(<netherendingores:ore_end_vanilla:1>, <minecraft:diamond>, 1.0, <minecraft:diamond>, 0.75);