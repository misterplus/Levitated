import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Enchanter;

//remove
Crucible.removeRecipe(<thermalfoundation:material:101>);
Crucible.removeRecipe(<thermalfoundation:material:102>);
Crucible.removeRecipe(<thermalfoundation:material:103>);
Compactor.removeStorageRecipe(<techreborn:ingot:22>);
InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:iron_ingot> * 2);
InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <thermalfoundation:ore:5>);
InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <thermalfoundation:ore:7>);
Pulverizer.removeRecipe(<thermalfoundation:ore:5>);
Pulverizer.removeRecipe(<thermalfoundation:ore:7>);


//add
var coils = [<thermalfoundation:material:513>, <thermalfoundation:material:514>, <thermalfoundation:material:515>] as IItemStack[];
for coil in coils {
    recipes.replaceAllOccurences(<ore:dustRedstone>, <ore:ingotRedstoneAlloy>, coil);
}
recipes.replaceAllOccurences(<ore:gearTin>, <ore:itemMachineChassi>, <thermalexpansion:frame>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:itemMachineChassi>, <thermalexpansion:frame:64>);
recipes.replaceAllOccurences(<ore:dustRedstone>, <contenttweaker:dynamo_frame>, <thermalexpansion:dynamo:*>);
recipes.addShaped(<contenttweaker:dynamo_frame>, [[<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>],[<ore:blockGlass>, <ore:itemMachineChassi>, <ore:blockGlass>], [<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>]]);

//Remove platinum from nickel & iridium
Pulverizer.addRecipe(<thermalfoundation:material:69> * 2, <thermalfoundation:ore:5>, 4000);
Pulverizer.addRecipe(<thermalfoundation:material:71> * 2, <thermalfoundation:ore:7>, 4000);
InductionSmelter.addRecipe(<thermalfoundation:material:69> * 3, <thermalfoundation:material:866>, <thermalfoundation:ore:5>, 4000);
InductionSmelter.addRecipe(<thermalfoundation:material:71> * 3, <thermalfoundation:material:866>, <thermalfoundation:ore:7>, 4000);

//Ore excavation integration
Enchanter.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:oeintegration:oreexcavation>.makeEnchantment(1).makeTag()), <minecraft:book>, <oeintegration:excavatemodifier> * 5, 36000, 4000, false);

//Fix water bottle
Transposer.removeFillRecipe(<minecraft:glass_bottle>, <liquid:water> * 250);
Transposer.removeExtractRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}));

//No Steel
InductionSmelter.removeRecipe(<techreborn:dust:13> * 4, <minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<techreborn:dust:13> * 4, <techreborn:dust:27>);
InductionSmelter.removeRecipe(<techreborn:dust:9> * 4, <minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<techreborn:dust:9> * 4, <techreborn:dust:27>);
InductionSmelter.removeRecipe(<immersiveengineering:material:6>, <minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<immersiveengineering:material:6>, <techreborn:dust:27>);