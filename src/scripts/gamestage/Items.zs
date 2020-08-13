import crafttweaker.item.IItemStack;

function stageItem (stage as string, name as string, item as IItemStack) {
    mods.ItemStages.addItemStage(stage, item);
    mods.ItemStages.setUnfamiliarName(name, item);
}

stageItem("netheritems", game.localize("unfamiliar.levitated.blaze_rod"), <minecraft:blaze_rod>);
stageItem("netheritems", game.localize("unfamiliar.levitated.blaze_powder"), <minecraft:blaze_powder>);
stageItem("netheritems", game.localize("unfamiliar.levitated.ore_flower_nether"), <botania:specialflower>.withTag({type: "orechidIgnem"}));
stageItem("netheritems", game.localize("unfamiliar.levitated.ore_flower_nether_floating"), <botania:floatingspecialflower>.withTag({type: "orechidIgnem"}));
stageItem("overworlditems", game.localize("unfamiliar.levitated.ore_flower"), <botania:specialflower>.withTag({type: "orechid"}));
stageItem("overworlditems", game.localize("unfamiliar.levitated.ore_flower_floating"), <botania:floatingspecialflower>.withTag({type: "orechid"}));