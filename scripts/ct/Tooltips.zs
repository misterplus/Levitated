#priority 9
import crafttweaker.item.IItemStack;

<contenttweaker:end_seeds>.addTooltip(format.gray(game.localize("tooltips.levitated.end_seeds")));
<contenttweaker:origin_book>.addTooltip(format.gray(game.localize("tooltips.levitated.origin_book")));
<contenttweaker:nether_book>.addTooltip(format.gray(game.localize("tooltips.levitated.nether_book")));
<contenttweaker:nether_book>.addTooltip(format.darkGray(game.localize("tooltips.levitated.nether_book_2")));

var paper_planes = [<contenttweaker:paper_plane_0>, <contenttweaker:paper_plane_1>, <contenttweaker:paper_plane_2>, <contenttweaker:paper_plane_3>, <contenttweaker:paper_plane_4>, <contenttweaker:paper_plane_5>, <contenttweaker:paper_plane_6>] as IItemStack[];

for i, paper_plane in paper_planes {
    paper_plane.addTooltip(format.gray(game.localize("tooltips.levitated.paper_plane_" + i)));
}

mods.jei.JEI.addDescription(<contenttweaker:end_iron_chunk>,game.localize("description.levitated.end_iron_chunk"));