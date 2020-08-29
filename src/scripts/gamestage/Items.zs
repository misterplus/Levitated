import crafttweaker.item.IItemStack;
import scripts.ct.Function;

Function.stageItem("netheritems", game.localize("unfamiliar.levitated.blaze_rod"), <minecraft:blaze_rod>);
Function.stageItem("netheritems", game.localize("unfamiliar.levitated.blaze_powder"), <minecraft:blaze_powder>);
Function.stageItem("netheritems", game.localize("unfamiliar.levitated.ore_flower_nether"), <botania:specialflower>.withTag({type: "orechidIgnem"}));
Function.stageItem("netheritems", game.localize("unfamiliar.levitated.ore_flower_nether_floating"), <botania:floatingspecialflower>.withTag({type: "orechidIgnem"}));
Function.stageItem("overworlditems", game.localize("unfamiliar.levitated.ore_flower"), <botania:specialflower>.withTag({type: "orechid"}));
Function.stageItem("overworlditems", game.localize("unfamiliar.levitated.ore_flower_floating"), <botania:floatingspecialflower>.withTag({type: "orechid"}));