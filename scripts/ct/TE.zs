import crafttweaker.item.IItemStack;

//remove
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:101>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:102>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:103>);

//add
var coils = [<thermalfoundation:material:513>, <thermalfoundation:material:514>, <thermalfoundation:material:515>] as IItemStack[];
for coil in coils {
    recipes.replaceAllOccurences(<ore:dustRedstone>, <ore:ingotRedstoneAlloy>, coil);
}
recipes.replaceAllOccurences(<ore:gearTin>, <ore:itemMachineChassi>, <thermalexpansion:frame>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:itemMachineChassi>, <thermalexpansion:frame:64>);
recipes.replaceAllOccurences(<ore:dustRedstone>, <contenttweaker:dynamo_frame>, <thermalexpansion:dynamo:*>);
recipes.addShaped(<contenttweaker:dynamo_frame>, [[<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>],[<ore:blockGlass>, <ore:itemMachineChassi>, <ore:blockGlass>], [<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>]]);