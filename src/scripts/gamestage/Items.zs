import crafttweaker.item.IItemStack;

function stageItem (stage as string, name as string, item as IItemStack) {
    mods.ItemStages.addItemStage(stage, item);
    mods.ItemStages.setUnfamiliarName(name, item);
}

stageItem("blaze_rod", game.localize("unfamiliar.levitated.blaze_rod"), <minecraft:blaze_rod>);
stageItem("blaze_rod", game.localize("unfamiliar.levitated.blaze_powder"), <minecraft:blaze_powder>);
stageItem("nether", game.localize("unfamiliar.levitated.ore_flower_nether"), <botania:specialflower>.withTag({type: "orechidIgnem"}));
stageItem("overworld", game.localize("unfamiliar.levitated.ore_flower"), <botania:specialflower>.withTag({type: "orechid"}));