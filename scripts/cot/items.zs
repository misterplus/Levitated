#loader contenttweaker
#priority 10

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;

var end_seeds = VanillaFactory.createItem("end_seeds");
end_seeds.register();

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
    Commands.call("gamestage silentadd @p end_copper", player, world, false, true);
    Commands.call("gamestage silentadd @p nether", player, world, false, true);
    Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.nether_book.message\"}", player, world, false, true);
    stack.shrink(1);
    return "SUCCESS";
};
nether_book.register();


var ccb = VanillaFactory.createItem("ccb");
ccb.register();

var ccb_base = VanillaFactory.createItem("ccb_base");
ccb_base.register();

var clay_board = VanillaFactory.createItem("clay_board");
clay_board.register();

var pottery_clay = VanillaFactory.createItem("pottery_clay");
pottery_clay.register();





