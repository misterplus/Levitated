//remore
recipes.remove(<opencomputers:material:5>);
recipes.remove(<opencomputers:material:6>);
recipes.remove(<opencomputers:material:7>);
recipes.remove(<opencomputers:material:8>);
recipes.remove(<opencomputers:material:9>);
recipes.remove(<opencomputers:material:10>);
recipes.remove(<opencomputers:material:11>);


//add
var assembler = extrautilities2.Tweaker.IMachineRegistry.getMachine("assembler");

assembler.addRecipe({"assembler_slot_item_0": <minecraft:iron_ingot>*3, 
                     "assembler_slot_item_1": <minecraft:gold_nugget> * 2, 
                     "assembler_slot_item_2": <minecraft:redstone> * 2, 
                     "assembler_slot_liquid": <liquid:solder> * 800},
                    {"assembler_slot_out": <opencomputers:material:6>*8}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <minecraft:iron_nugget>*6, 
                     "assembler_slot_item_1": <minecraft:redstone> * 2, 
                     "assembler_slot_item_2": <opencomputers:material:6>, 
                     "assembler_slot_liquid": <liquid:solder> * 800},
                    {"assembler_slot_out": <opencomputers:material:7>*8}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <minecraft:gold_nugget>*6, 
                     "assembler_slot_item_1": <minecraft:redstone> * 2, 
                     "assembler_slot_item_2": <opencomputers:material:6>, 
                     "assembler_slot_liquid": <liquid:solder> * 600},
                    {"assembler_slot_out": <opencomputers:material:8>*4}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <opencomputers:material:29>*6, 
                     "assembler_slot_item_1": <minecraft:redstone> * 2, 
                     "assembler_slot_item_2": <opencomputers:material:6>, 
                     "assembler_slot_liquid": <liquid:solder> * 500},
                    {"assembler_slot_out": <opencomputers:material:9>*2}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <minecraft:gold_ingot>, 
                     "assembler_slot_item_1": <minecraft:clock>, 
                     "assembler_slot_item_2": <opencomputers:material:6>*3, 
                     "assembler_slot_liquid": <liquid:redstone> * 100},
                    {"assembler_slot_out": <opencomputers:material:11>}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <minecraft:iron_ingot>, 
                     "assembler_slot_item_1": <opencomputers:material:7>, 
                     "assembler_slot_item_2": <opencomputers:material:6>*3, 
                     "assembler_slot_liquid": <liquid:redstone> * 100},
                    {"assembler_slot_out": <opencomputers:material:10>}, 10000, 200);

assembler.addRecipe({"assembler_slot_item_0": <opencomputers:material:4>, 
                     "assembler_slot_item_1": <minecraft:iron_nugget>*3, 
                     "assembler_slot_item_2": <minecraft:gold_nugget>, 
                     "assembler_slot_liquid": <liquid:solder> * 100},
                    {"assembler_slot_out": <opencomputers:material:5>}, 10000, 200);
