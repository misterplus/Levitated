#priority 9
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.hide;

function hideOnly (item as IItemStack, r as int[]) {
    var def = item.definition;
    for i in r {
        hide(def.makeStack(i));
    }
}
function hideExcept (item as IItemStack, e as int[], f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        if !(e has i) {
            hide(def.makeStack(i));
        }
    }
}
function hideAll (item as IItemStack, f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        hide(def.makeStack(i));
    }
}

<contenttweaker:end_seeds>.addTooltip(format.gray(game.localize("tooltips.levitated.end_seeds")));
<contenttweaker:origin_book>.addTooltip(format.gray(game.localize("tooltips.levitated.origin_book")));
<contenttweaker:nether_book>.addTooltip(format.gray(game.localize("tooltips.levitated.nether_book")));
<contenttweaker:overworld_book>.addTooltip(format.gray(game.localize("tooltips.levitated.overworld_book")));
<contenttweaker:mana_paper>.addTooltip(format.gray(game.localize("tooltips.levitated.mana_paper")));
<contenttweaker:mana_paper>.addTooltip(format.darkGray(game.localize("tooltips.levitated.mana_paper_2")));
<stygian:endglow>.addTooltip(format.gray(game.localize("tooltips.levitated.endglow")));
<thermalfoundation:glass_alloy:*>.addTooltip(format.yellow(game.localize("tooltips.levitated.hard_glass")));
addDescription(<contenttweaker:mana_paper>, game.localize("description.levitated.mana_paper"));
addDescription(<contenttweaker:end_iron_chunk>, game.localize("description.levitated.end_iron_chunk"));
addDescription(<tconstruct:firewood:1>, game.localize("description.levitated.end_iron_chunk"));
addDescription(<minecraft:feather>, game.localize("description.levitated.feather"));
addDescription(<contenttweaker:rainbow_ingot>, game.localize("description.levitated.rainbow"));
addDescription(<contenttweaker:rainbow_block>, game.localize("description.levitated.rainbow"));
addDescription(<botania:bifrostperm>, game.localize("description.levitated.rainbow"));
addDescription(<botania:pool>, game.localize("description.levitated.mana_pool"));
addDescription(<minecraft:brewing_stand>, game.localize("description.levitated.stand"));

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
hideExcept(<netherendingores:ore_end_modded_1>, [1, 3, 8] as int[], 0, 16);
hideOnly(<netherendingores:ore_other_1>, [1, 3, 5] as int[]);

//Nether ores
hide(<netherendingores:ore_nether_vanilla:*>);
hide(<netherendingores:ore_nether_modded_2>);
hideExcept(<netherendingores:ore_nether_modded_1>, [0, 5, 7, 9, 10, 12] as int[], 0, 16);

//IE ores
hideAll(<immersiveengineering:ore>, 0, 5);

//TR ores
hideExcept(<techreborn:ore>, [1, 2, 3, 4] as int[], 0, 14);
hideAll(<techreborn:ore2>, 0, 2);

//AR ores
hideExcept(<libvulpes:ore0>, [0, 8] as int[], 0, 11);

//TE ores
hideAll(<thermalfoundation:ore_fluid>, 0, 6);