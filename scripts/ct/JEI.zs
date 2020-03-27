#priority 9
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.hide;

<contenttweaker:end_seeds>.addTooltip(format.gray(game.localize("tooltips.levitated.end_seeds")));
<contenttweaker:origin_book>.addTooltip(format.gray(game.localize("tooltips.levitated.origin_book")));
<contenttweaker:nether_book>.addTooltip(format.gray(game.localize("tooltips.levitated.nether_book")));
<contenttweaker:nether_book>.addTooltip(format.darkGray(game.localize("tooltips.levitated.nether_book_2")));
<contenttweaker:overworld_book>.addTooltip(format.gray(game.localize("tooltips.levitated.overworld_book")));
<contenttweaker:mana_paper>.addTooltip(format.gray(game.localize("tooltips.levitated.mana_paper")));
<contenttweaker:mana_paper>.addTooltip(format.darkGray(game.localize("tooltips.levitated.mana_paper_2")));
addDescription(<contenttweaker:mana_paper>, game.localize("description.levitated.mana_paper"));
addDescription(<contenttweaker:end_iron_chunk>, game.localize("description.levitated.end_iron_chunk"));
addDescription(<tconstruct:firewood:1>, game.localize("description.levitated.end_iron_chunk"));
addDescription(<minecraft:feather>, game.localize("description.levitated.feather"));

<extrautils2:chickenring:1>.displayName = game.localize("rename.levitated.shulker_ring");
<pneumaticcraft:ingot_iron_compressed>.displayName = game.localize("rename.levitated.compiron");
<pneumaticcraft:compressed_iron_block>.displayName = game.localize("rename.levitated.compiron_block");
<techreborn:ingot:19>.displayName = game.localize("rename.levitated.refined_iron_ingot");
<techreborn:storage2:10>.displayName = game.localize("rename.levitated.refined_iron_block");
<techreborn:nuggets:19>.displayName = game.localize("rename.levitated.refined_iron_nugget");
<techreborn:plates:35>.displayName = game.localize("rename.levitated.refined_iron_plate");

//General Items
var banned_items = [<integrateddynamics:coal_generator>, <botania:rfgenerator>, <immersiveengineering:stone_decoration:10>, <immersiveengineering:stone_decoration_slab:10>] as IItemStack[];
for item in banned_items {
    mods.jei.JEI.removeAndHide(item);
}

//Paper planes
var paper_planes = [<contenttweaker:paper_plane_0>, <contenttweaker:paper_plane_1>, <contenttweaker:paper_plane_2>, <contenttweaker:paper_plane_3>, <contenttweaker:paper_plane_4>, <contenttweaker:paper_plane_5>, <contenttweaker:paper_plane_6>] as IItemStack[];
for i, paper_plane in paper_planes {
    paper_plane.addTooltip(format.gray(game.localize("tooltips.levitated.paper_plane_" + i)));
    addDescription(paper_plane, game.localize("description.levitated.paper_plane"));
    hide(paper_plane);
}

//End ores
hide(<netherendingores:ore_end_vanilla:2>);
hide(<netherendingores:ore_end_modded_2>);
var end_ore_def = <netherendingores:ore_end_modded_1>.definition;
var end_ore_keep = [1, 3, 8] as int[];
for i in 0 to 16 {
    if !(end_ore_keep has i) {
        hide(end_ore_def.makeStack(i));
    }
}
var end_ore_other_def = <netherendingores:ore_other_1>.definition;
var end_ore_other_hide = [1, 3, 5] as int[];
for i in end_ore_other_hide {
    hide(end_ore_other_def.makeStack(i));
}

//Nether ores
hide(<netherendingores:ore_nether_vanilla:*>);
hide(<netherendingores:ore_nether_modded_2>);
var nether_ore_def = <netherendingores:ore_nether_modded_1>.definition;
var nether_ore_keep = [0, 5, 7, 9, 10, 12] as int[];
for i in 0 to 16 {
    if !(nether_ore_keep has i) {
        hide(nether_ore_def.makeStack(i));
    }
}
