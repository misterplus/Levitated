#priority 9
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.hide;

<contenttweaker:end_seeds>.addTooltip(format.gray(game.localize("tooltips.levitated.end_seeds")));
<contenttweaker:origin_book>.addTooltip(format.gray(game.localize("tooltips.levitated.origin_book")));
<contenttweaker:nether_book>.addTooltip(format.gray(game.localize("tooltips.levitated.nether_book")));
<contenttweaker:nether_book>.addTooltip(format.darkGray(game.localize("tooltips.levitated.nether_book_2")));
<contenttweaker:mana_paper>.addTooltip(format.darkGray(game.localize("tooltips.levitated.mana_paper")));

var paper_planes = [<contenttweaker:paper_plane_0>, <contenttweaker:paper_plane_1>, <contenttweaker:paper_plane_2>, <contenttweaker:paper_plane_3>, <contenttweaker:paper_plane_4>, <contenttweaker:paper_plane_5>, <contenttweaker:paper_plane_6>] as IItemStack[];

for i, paper_plane in paper_planes {
    paper_plane.addTooltip(format.gray(game.localize("tooltips.levitated.paper_plane_" + i)));
    addDescription(paper_plane, game.localize("description.levitated.paper_plane"));
    hide(paper_plane);
}

addDescription(<contenttweaker:mana_paper>, game.localize("description.levitated.mana_paper"));
addDescription(<contenttweaker:end_iron_chunk>, game.localize("description.levitated.end_iron_chunk"));
addDescription(<minecraft:feather>, game.localize("description.levitated.feather"));