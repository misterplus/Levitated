#loader contenttweaker
#priority 10

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Hand;
import crafttweaker.block.IBlockState;

var easy_items = ["end_seeds", "ccb", "ccb_base", "clay_board", "pottery_clay", "solder_powder", "biome_scanner_basic", "terrain_scanner", "blue_lotus", "dynamo_frame"] as string[];
for item in easy_items {
    VanillaFactory.createItem(item).register();
}

var end_iron_chunk = VanillaFactory.createItem("end_iron_chunk");
end_iron_chunk.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) && world.getBlockState(pos) == <block:stygian:endplanks>) {
        world.setBlockState(<block:tconstruct:firewood:1>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
end_iron_chunk.register();

var origin_book = VanillaFactory.createItem("origin_book");
origin_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) {
        Commands.call("spawnpoint @p", player, world, false, true);
        Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.origin_book.message\"}", player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
origin_book.register();

var nether_book = VanillaFactory.createItem("nether_book");
nether_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) {
        Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.nether_book.message\"}", player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
nether_book.register();

var solder_bucket = VanillaFactory.createItem("solder_bucket");
solder_bucket.maxStackSize = 1;
solder_bucket.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) && world.getBlockState(pos.getOffset(facing, 1)) == <block:minecraft:fire>) {
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

paper_planes[6].itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) && player.isSneaking) {
        var data = player.data;
        if data has "PlaneCountdown" {
            var time = data.memberGet("PlaneCountdown") as int;
            if time >= 0 {
                player.sendChat(game.localize("item.contenttweaker.paper_plane_6.message"));
                return "PASS";
            }
            else {
                player.update(data + {"PlaneCountdown": 100});
                stack.shrink(1);
                return "SUCCESS";
            }   
        }
        else {
            player.update(data + {"PlaneCountdown": 100});
            stack.shrink(1);
            return "SUCCESS"; 
        }
    }
    return "Pass";
};

for paper_plane in paper_planes {
    paper_plane.maxStackSize = 1;
    paper_plane.register();
}

var mana_paper = VanillaFactory.createItem("mana_paper");
mana_paper.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player) && player.isSneaking && player.xp >= 1 && (world.getBlockState(pos) == <block:minecraft:crafting_table> | world.getBlockState(pos) == <block:tconstruct:tooltables:0>)) {
        player.getHeldItem(hand).shrink(1);
        Commands.call("give @p contenttweaker:paper_plane_0", player, world, false, true);
        Commands.call("xp -1L @p", player, world, false, true);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
mana_paper.register();

var rotten_pork = VanillaFactory.createItemFood("rotten_pork", 1);
rotten_pork.saturation = 0;
rotten_pork.onItemFoodEaten = function(stack, world, player) {
    if !world.isRemote() {
        player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(20*30, 0));
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(20*10, 0));
    }
};
rotten_pork.register();

var overworld_book = VanillaFactory.createItem("overworld_book");
overworld_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) {
        Commands.call("tellraw @p {\"translate\":\"item.contenttweaker.overworld_book.message\"}", player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
overworld_book.register();

var overworld_star = VanillaFactory.createItem("overworld_star");
overworld_star.glowing = true;
overworld_star.register();

var rainbow_ingot = VanillaFactory.createItem("rainbow_ingot");
rainbow_ingot.glowing = true;
rainbow_ingot.register();