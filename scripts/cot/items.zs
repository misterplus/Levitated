#loader contenttweaker
#priority 10

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

var end_seeds = VanillaFactory.createItem("end_seeds");
end_seeds.register();

var end_iron_chunk = VanillaFactory.createItem("end_iron_chunk");
end_iron_chunk.register();

var origin_book = VanillaFactory.createItem("origin_book");
origin_book.itemRightClick = function(stack, world, player, hand) {
    Commands.call("spawnpoint @p", player, world, false, true);
    return "Pass";
};
origin_book.register();