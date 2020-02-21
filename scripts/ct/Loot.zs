import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//Zombie pigman
var pigman = LootTables.getTable("minecraft:entities/zombie_pigman");
pigman.removePool("pool1");
pigman.removePool("pool2");
var pork = pigman.addPool("pork", 1, 1, 0, 0);
pork.addItemEntryJson(<contenttweaker:rotten_pork>, 1, 1, [], [
    {
        "inverse": false,
        "condition": "minecraft:killed_by_player"
    },
    {
        "chance": 0.025,
        "looting_multiplier": 0.01,
        "condition": "minecraft:random_chance_with_looting"
    }
]);