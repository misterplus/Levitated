import crafttweaker.item.IItemStack;

function stageItem (stage as string, name as string, item as IItemStack) {
    mods.ItemStages.addItemStage(stage, item);
    mods.ItemStages.setUnfamiliarName(name, item);
}

stageItem("blaze_rod", game.localize("unfamiliar.levitated.blaze_rod"), <minecraft:blaze_rod>);