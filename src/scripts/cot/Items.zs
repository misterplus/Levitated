#loader contenttweaker
#priority 10

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Hand;
import crafttweaker.block.IBlockState;
import mods.ctutils.utils.Math;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import extrautilities2.Tweaker.XUTweaker;

function sendLocalizedMsg (key as string, player as IPlayer, world as IWorld) {
    Commands.call("tellraw @p {\"translate\":\"" + key + "\"}", player, world, false, true);
}

var easy_items = ["end_seeds", "ccb", "ccb_base", "clay_board", "pottery_clay", "solder_powder", "biome_scanner_basic", "terrain_scanner", "blue_lotus", "dynamo_frame", "rainbowgen"] as string[];
for item in easy_items {
    VanillaFactory.createItem(item).register();
}

var rare_items = ["scroll", "overworld_star"] as string[];
for item in rare_items {
    var newItem = VanillaFactory.createItem(item);
    newItem.rarity = "Rare";
    newItem.register();
}

var epic_items = ["trophy", "shard", "core", "dragon_spirit", "scroll_ignis", "crystal", "dna", "contract", "potion"] as string[];
for item in epic_items {
    var newItem = VanillaFactory.createItem(item);
    newItem.rarity = "Epic";
    newItem.register();
}

var nether_items = ["wither", "blaze", "pigman", "ghast", "magma"] as string[];
for item in nether_items {
    var ess = VanillaFactory.createItem("essence_" + item);
    var cry = VanillaFactory.createItem("crystal_" + item);
    ess.rarity = "Rare";
    cry.rarity = "Rare";
    ess.register();
    cry.register();
}

var end_iron_chunk = VanillaFactory.createItem("end_iron_chunk");
end_iron_chunk.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.getBlockState(pos) == <block:stygian:endplanks>) {
        world.setBlockState(<block:tconstruct:firewood:1>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
end_iron_chunk.register();

var origin_book = VanillaFactory.createItem("origin_book");
origin_book.rarity = "Rare";
origin_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player)) {
        Commands.call("spawnpoint @p", player, world, false, true);
        sendLocalizedMsg("item.contenttweaker.origin_book.message", player, world);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
origin_book.register();

var nether_book = VanillaFactory.createItem("nether_book");
nether_book.rarity = "Rare";
nether_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player)) {
        sendLocalizedMsg("item.contenttweaker.nether_book.message", player, world);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
nether_book.register();

var solder_bucket = VanillaFactory.createItem("solder_bucket");
solder_bucket.maxStackSize = 1;
solder_bucket.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.getBlockState(pos.getOffset(facing, 1)) == <block:minecraft:fire>) {
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

paper_planes[6].rarity = "Rare";
paper_planes[6].itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && player.isSneaking) {
        var data = player.data;
        if data has "PlaneCountdown" {
            var time = data.memberGet("PlaneCountdown") as int;
            if time >= 0 {
                sendLocalizedMsg("item.contenttweaker.paper_plane_6.message", player, world);
                return "PASS";
            }
        }
        player.update(data + {"PlaneCountdown": 100});
        stack.shrink(1);
        return "SUCCESS"; 
    }
    return "Pass";
};

for paper_plane in paper_planes {
    paper_plane.maxStackSize = 1;
    paper_plane.register();
}

var mana_paper = VanillaFactory.createItem("mana_paper");
mana_paper.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && player.isSneaking && player.xp >= 1 && (world.getBlockState(pos) == <block:minecraft:crafting_table> | world.getBlockState(pos) == <block:tconstruct:tooltables:0>)) {
        player.getHeldItem(hand).shrink(1);
        player.give(itemUtils.getItem("contenttweaker:paper_plane_0"));
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
overworld_book.rarity = "Rare";
overworld_book.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player)) {
        Commands.call("gamestage silentadd @p overworld", player, world, false, true);
        sendLocalizedMsg("item.contenttweaker.overworld_book.message", player, world);
        return "SUCCESS";
    }
    return "PASS";
};
overworld_book.register();

var rainbow_ingot = VanillaFactory.createItem("rainbow_ingot");
rainbow_ingot.rarity = "Rare";
rainbow_ingot.glowing = true;
rainbow_ingot.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.getBlockState(pos) == <block:botania:bifrostperm>) {
        world.setBlockState(<block:contenttweaker:rainbow_block>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
rainbow_ingot.register();

var chaos_pearl = VanillaFactory.createItem("chaos_pearl");
chaos_pearl.rarity = "Rare";
chaos_pearl.maxStackSize = 16;
chaos_pearl.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.dimension == 1) {
        var data = player.data;
        if data has "ChaosCooldown" {
            var cd = data.memberGet("ChaosCooldown") as int;
            if cd > 0 {
                sendLocalizedMsg("item.contenttweaker.chaos_pearl.message", player, world);
                return "PASS";
            }
        }
        var x = player.x;
        var y = player.y;
        var z = player.z;
        var destx = Math.random() * 10000 + x - 5000;
        var destz = Math.random() * 10000 + z - 5000;
        Commands.call("tp @p " + destx + " -40 " + destz, player, world, false, true);
        Commands.call("playsound minecraft:entity.enderpearl.throw neutral @p ~ ~ ~ 0.5 0.4", player, world, false, true);
        var tag = {
            "x": x,
            "y": y,
            "z": z,
            "display": {"Lore": ["" + x as int + "," + y as int + "," + z as int]}
        } as IData;
        player.give(itemUtils.getItem("contenttweaker:recall_pearl").withTag(tag));
        stack.shrink(1);
        player.update(data + {"ChaosCooldown": 600});
        return "SUCCESS"; 
    }
    return "PASS";
};
chaos_pearl.register();

var recall_pearl = VanillaFactory.createItem("recall_pearl");
recall_pearl.rarity = "Rare";
recall_pearl.maxStackSize = 1;
recall_pearl.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.dimension == 1) {
        var c = stack.tag;
        Commands.call("tp @p " + c.x + " " + c.y + " " + c.z, player, world, false, true);
        Commands.call("playsound minecraft:entity.enderpearl.throw neutral @p ~ ~ ~ 0.5 0.4", player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
    }
    return "PASS";
};
recall_pearl.register();

var apple = VanillaFactory.createItemFood("apple", 20);
apple.saturation = 10.0;
apple.rarity = "Epic";
apple.alwaysEdible = true;
apple.onItemFoodEaten = function(stack, world, player) {
    if !world.isRemote() {
        sendLocalizedMsg("item.contenttweaker.apple.message", player, world);
        Commands.call("effect @p extrautils2:effect.xu2.doom 7 0", player, world, false, true);
    }
};
apple.register();

var globe = VanillaFactory.createItem("globe");
globe.rarity = "Epic";
globe.glowing = true;
globe.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !XUTweaker.isPlayerFake(player) && world.getBlockState(pos) == <block:weather2:weather_deflector> && player.isSneaking) {
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        Commands.call("forge setdimension @p 2001 0 64 0", player, world, false, true);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
globe.register();