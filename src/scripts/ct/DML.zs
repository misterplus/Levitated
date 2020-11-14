//remove
recipes.remove(<deepmoblearning:glitch_infused_sword>);
recipes.remove(<deepmoblearning:glitch_infused_boots>);
recipes.remove(<deepmoblearning:glitch_infused_leggings>);
recipes.remove(<deepmoblearning:glitch_infused_chestplate>);
recipes.remove(<deepmoblearning:glitch_infused_helmet>);

//add
recipes.addShaped(<deepmoblearning:glitch_infused_boots>, [[null, null, null],[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>], [<deepmoblearning:glitch_infused_ingot>, <tconstruct:slime_boots:*>, <deepmoblearning:glitch_infused_ingot>]]);
recipes.addShaped(<deepmoblearning:glitch_infused_leggings>, [[<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>],[<deepmoblearning:glitch_infused_ingot>, <botania:elementiumlegs>, <deepmoblearning:glitch_infused_ingot>], [<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>]]);
recipes.addShaped(<deepmoblearning:glitch_infused_chestplate>, [[<deepmoblearning:glitch_infused_ingot>, <extrautils2:angelring:*>, <deepmoblearning:glitch_infused_ingot>],[<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>], [<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>]]);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [[<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>],[<deepmoblearning:glitch_infused_ingot>, <thermalfoundation:armor.helmet_steel>, <deepmoblearning:glitch_infused_ingot>], [null, null, null]]);
recipes.addShaped(<deepmoblearning:glitch_infused_sword>, [[null, <deepmoblearning:glitch_infused_ingot>, null],[null, <deepmoblearning:glitch_infused_ingot>, null], [null, <immersiveengineering:material:19>, null]]);
recipes.replaceAllOccurences(<minecraft:dragon_egg>, <minecraft:dragon_breath>, <deepmoblearning:data_model_dragon>);