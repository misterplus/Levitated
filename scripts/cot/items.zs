#loader contenttweaker
#priority 10

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Hand;
import crafttweaker.block.IBlockState;

var easy_items = ["end_seeds", "ccb", "ccb_base", "clay_board", "pottery_clay", "solder_powder", "biome_scanner_basic", "terrain_scanner", "blue_lotus"] as string[];
for item in easy_items {
    VanillaFactory.createItem(item).register();
}

var end_iron_chunk = VanillaFactory.createItem("end_iron_chunk");
end_iron_chunk.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:stygian:endplanks>) {
        world.setBlockState(<block:tconstruct:firewood:1>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
end_iron_chunk.register();

var origin_book = VanillaFactory.createItem("origin_book");
origin_book.itemRightClick = function(stack, world, player, hand) {
    Commands.call("spawnpoint @p", player, world, false, true);
    Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.origin_book.message\"}", player, world, false, true);
    stack.shrink(1);
    return "SUCCESS";
};
origin_book.register();

var nether_book = VanillaFactory.createItem("nether_book");
nether_book.itemRightClick = function(stack, world, player, hand) {
    Commands.call("gamestage silentadd @p end_ores", player, world, false, true);
    Commands.call("gamestage silentadd @p nether", player, world, false, true);
    Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.nether_book.message\"}", player, world, false, true);
    stack.shrink(1);
    return "SUCCESS";
};
nether_book.register();

var solder_bucket = VanillaFactory.createItem("solder_bucket");
solder_bucket.maxStackSize = 1;
solder_bucket.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos.getOffset(facing, 1)) == <block:minecraft:fire>){
        player.getHeldItem(hand).shrink(1);
        if hand == Hand.main(){
            Commands.call("replaceitem entity @p slot.weapon.mainhand forge:bucketfilled 1 0 {Amount:1000,FluidName:\"solder\"}", player, world, false, true);
        }
        else {
            Commands.call("replaceitem entity @p slot.weapon.offhand forge:bucketfilled 1 0 {Amount:1000,FluidName:\"solder\"}", player, world, false, true);
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
solder_bucket.register();

var paper_planes = [] as Item[];
for i in 0 to 7 {
    paper_planes += VanillaFactory.createItem("paper_plane_" + i);
}

for paper_plane in paper_planes {
    paper_plane.maxStackSize = 1;
    paper_plane.register();
}

var mana_paper = VanillaFactory.createItem("mana_paper");
mana_paper.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (player.isSneaking) & (player.xp >= 7) & ((world.getBlockState(pos) == <block:minecraft:crafting_table>) | (world.getBlockState(pos) == <block:tconstruct:tooltables:0>)) {
        player.getHeldItem(hand).shrink(1);
        Commands.call("give @p contenttweaker:paper_plane_0", player, world, false, true);
        player.removeXP(7);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
mana_paper.register();