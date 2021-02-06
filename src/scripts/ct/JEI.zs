#priority 9
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.hide;
import mods.jei.JEI.hideCategory;
import scripts.ct.Function;

<contenttweaker:end_seeds>.addTooltip(format.gray(game.localize("tooltips.levitated.end_seeds")));
<contenttweaker:origin_book>.addTooltip(format.gray(game.localize("tooltips.levitated.origin_book")));
<contenttweaker:nether_book>.addTooltip(format.gray(game.localize("tooltips.levitated.nether_book")));
<contenttweaker:overworld_book>.addTooltip(format.gray(game.localize("tooltips.levitated.overworld_book")));
<contenttweaker:mana_paper>.addTooltip(format.gray(game.localize("tooltips.levitated.mana_paper")));
<contenttweaker:mana_paper>.addTooltip(format.darkGray(game.localize("tooltips.levitated.mana_paper_2")));
<stygian:endglow>.addTooltip(format.gray(game.localize("tooltips.levitated.endglow")));
<thermalfoundation:glass_alloy:*>.addTooltip(format.yellow(game.localize("tooltips.levitated.hard_glass")));
<minecraft:glass_bottle>.addTooltip(format.yellow(game.localize("tooltips.levitated.bottle")));
<minecraft:potion>.withTag({Potion: "minecraft:water"}).addTooltip(format.yellow(game.localize("tooltips.levitated.bottle")));
<contenttweaker:chaos_pearl>.addTooltip(format.yellow(game.localize("tooltips.levitated.chaos_pearl")));
<contenttweaker:recall_pearl>.addTooltip(format.yellow(game.localize("tooltips.levitated.recall_pearl")));
<contenttweaker:shard>.addTooltip(format.gray(game.localize("tooltips.levitated.shard")));
<contenttweaker:essence_wither>.addTooltip(format.yellow(game.localize("tooltips.levitated.essence")));
<contenttweaker:essence_blaze>.addTooltip(format.yellow(game.localize("tooltips.levitated.essence")));
<contenttweaker:essence_ghast>.addTooltip(format.yellow(game.localize("tooltips.levitated.essence")));
<contenttweaker:essence_magma>.addTooltip(format.yellow(game.localize("tooltips.levitated.essence")));
<contenttweaker:essence_pigman>.addTooltip(format.yellow(game.localize("tooltips.levitated.essence")));
<contenttweaker:contract>.addTooltip(format.yellow(game.localize("tooltips.levitated.contract")));
<scanner:biome_scanner_basic>.addTooltip(format.darkRed(format.bold(game.localize("tooltips.levitated.deprecated"))));
<scanner:biome_scanner_adv>.addTooltip(format.darkRed(format.bold(game.localize("tooltips.levitated.deprecated"))));
<scanner:biome_scanner_elite>.addTooltip(format.darkRed(format.bold(game.localize("tooltips.levitated.deprecated"))));
<chesttransporter:chesttransporter_diamond>.addTooltip(format.yellow(game.localize("tooltips.levitated.transporter")));
<contenttweaker:apple>.addTooltip(format.yellow(game.localize("tooltips.levitated.apple")));
<contenttweaker:apple>.addTooltip(format.darkRed(format.bold(game.localize("tooltips.levitated.apple_2"))));
<wizardry:cloud>.addTooltip(format.yellow(game.localize("tooltips.levitated.cloud")));
<botania:specialflower>.withTag({type: "orechid"}).addTooltip(format.yellow(game.localize("tooltips.levitated.orechid.overworld")));
<botania:specialflower>.withTag({type: "orechidIgnem"}).addTooltip(format.yellow(game.localize("tooltips.levitated.orechid.nether")));
<botania:specialflower>.withTag({type: "orechidEndium"}).addTooltip(format.yellow(game.localize("tooltips.levitated.orechid.end")));
<deepmoblearning:trial_key>.addTooltip(format.yellow(game.localize("tooltips.levitated.key")));
<minecraft:nether_brick>.addTooltip(format.yellow(game.localize("tooltips.levitated.blaze")));
<chisel:lavastone>.addTooltip(format.yellow(game.localize("tooltips.levitated.wither_skeleton")));

addDescription(<contenttweaker:mana_paper>, game.localize("description.levitated.mana_paper"));
addDescription([<contenttweaker:end_iron_chunk>, <tconstruct:firewood:1>], game.localize("description.levitated.end_iron_chunk"));
addDescription(<minecraft:feather>, game.localize("description.levitated.feather"));
addDescription([<contenttweaker:rainbow_ingot>, <contenttweaker:rainbow_block>, <botania:bifrostperm>], game.localize("description.levitated.rainbow"));
addDescription(<botania:pool>, game.localize("description.levitated.mana_pool"));
addDescription(<minecraft:brewing_stand>, game.localize("description.levitated.stand"));
addDescription(<forge:bucketfilled>.withTag({FluidName: "solder", Amount: 1000}), game.localize("description.levitated.solder"));
addDescription(<contenttweaker:chaos_pearl>, game.localize("description.levitated.chaos_pearl"));
addDescription(<contenttweaker:recall_pearl>, game.localize("description.levitated.recall_pearl"));
addDescription(<contenttweaker:dragon_spirit>, game.localize("description.levitated.dragon_spirit"));
addDescription(<contenttweaker:contract>, game.localize("description.levitated.contract"));
addDescription(<scanner:biome_scanner_ultimate>, game.localize("description.levitated.biome_scanner"));
addDescription(<scanner:terrain_scanner>, game.localize("description.levitated.terrain_scanner"));
addDescription(<scanner:scanner_queue>, game.localize("description.levitated.scanner_queue"));
addDescription([<contenttweaker:eden_leaves>, <contenttweaker:eden_leaves_fruitless>], game.localize("description.levitated.eden_leaves"));
addDescription(<contenttweaker:dna>, game.localize("description.levitated.dna"));
addDescription(<wizardry:cloud>, game.localize("description.levitated.cloud"));
addDescription(<contenttweaker:globe>, "description.levitated.globe");
addDescription(<enderio:item_material:20>, "description.levitated.bedrockdust");

<extrautils2:chickenring:1>.displayName = game.localize("rename.levitated.shulker_ring");
<pneumaticcraft:ingot_iron_compressed>.displayName = game.localize("rename.levitated.compiron");
<pneumaticcraft:compressed_iron_block>.displayName = game.localize("rename.levitated.compiron_block");
<techreborn:ingot:19>.displayName = game.localize("rename.levitated.refined_iron_ingot");
<techreborn:storage2:10>.displayName = game.localize("rename.levitated.refined_iron_block");
<techreborn:nuggets:19>.displayName = game.localize("rename.levitated.refined_iron_nugget");
<techreborn:plates:35>.displayName = game.localize("rename.levitated.refined_iron_plate");
<scanner:biome_scanner_basic>.displayName = game.localize("rename.levitated.biome_scanner_deprecated");
<scanner:biome_scanner_adv>.displayName = game.localize("rename.levitated.biome_scanner_deprecated");
<scanner:biome_scanner_elite>.displayName = game.localize("rename.levitated.biome_scanner_deprecated");
<scanner:biome_scanner_ultimate>.displayName = game.localize("rename.levitated.biome_scanner");

mods.jei.JEI.addItem(<minecraft:paper>.withTag({display:{Name: "az",Lore:["#iCwJLKH"]}}));

//General Items
var banned_items = [<integrateddynamics:coal_generator>, <botania:rfgenerator>, <immersiveengineering:stone_decoration:10>, <immersiveengineering:stone_decoration_slab:10>, <contenttweaker:wither_crystal>, <contenttweaker:water_crystal>, <contenttweaker:fire_crystal>, <contenttweaker:life_crystal>, <libvulpes:coalgenerator>, <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"})] as IItemStack[];
for item in banned_items {
    mods.jei.JEI.removeAndHide(item);
}

//Paper planes
var paper_planes = [<contenttweaker:paper_plane_0>, <contenttweaker:paper_plane_1>, <contenttweaker:paper_plane_2>, <contenttweaker:paper_plane_3>, <contenttweaker:paper_plane_4>, <contenttweaker:paper_plane_5>, <contenttweaker:paper_plane_6>] as IItemStack[];
for i, paper_plane in paper_planes {
    paper_plane.addTooltip(format.gray(game.localize("tooltips.levitated.paper_plane_" + i)));
    paper_plane.addShiftTooltip(format.darkGray(game.localize("tooltips.levitated.paper_plane_hidden_" + i)), format.darkGray(game.localize("tooltips.levitated.papep_plane_hint")));
    addDescription(paper_plane, game.localize("description.levitated.paper_plane"));
    hide(paper_plane);
}

//End ores
hide(<netherendingores:ore_end_vanilla:2>);
hide(<netherendingores:ore_end_modded_2>);
hide(<netherendingores:ore_other_1:0>);
hide(<netherendingores:ore_other_1:2>);
hide(<netherendingores:ore_other_1:4>);
Function.hideExcept(<netherendingores:ore_end_modded_1>, [1, 3, 8] as int[], 0, 16);
Function.hideOnly(<netherendingores:ore_other_1>, [1, 3, 5] as int[]);

//Nether ores
hide(<netherendingores:ore_nether_vanilla:*>);
hide(<netherendingores:ore_nether_modded_2>);
Function.hideExcept(<netherendingores:ore_nether_modded_1>, [0, 5, 7, 9, 10, 12] as int[], 0, 16);

//IE ores
Function.hideAll(<immersiveengineering:ore>, 0, 5);

//TR ores
Function.hideExcept(<techreborn:ore>, [1, 2, 3, 4] as int[], 0, 14);
Function.hideAll(<techreborn:ore2>, 0, 2);

//AR ores
Function.hideExcept(<libvulpes:ore0>, [0, 8] as int[], 0, 11);

//TE ores
Function.hideAll(<thermalfoundation:ore_fluid>, 0, 6);

//Scanners
hide(<scanner:biome_scanner_basic>);
hide(<scanner:biome_scanner_adv>);
hide(<scanner:biome_scanner_elite>);
hide(<scanner:blockairey>);

//Direct trait
static directs as IItemStack[] = [
    <tconstruct:tool_rod>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:tough_tool_rod>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:binding>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:tough_binding>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:wide_guard>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:hand_guard>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:cross_guard>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:large_plate>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:knife_blade>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:bow_limb>.withTag({Material: "vibrant_alloy"}),
    <tconstruct:arrow_head>.withTag({Material: "vibrant_alloy"})
] as IItemStack[];
for item in directs {
    hide(item);
}

//Categories
hideCategory("ie.alloysmelter");

//Nuclear
hide(<liquid:nuclear>);
hide(<forge:bucketfilled>.withTag({FluidName: "nuclear", Amount: 1000}));