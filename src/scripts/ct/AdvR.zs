//remove
mods.advancedrocketry.RollingMachine.removeRecipe(<techreborn:plates:38>);
mods.advancedrocketry.ChemicalReactor.removeRecipe(<liquid:rocketfuel>);
recipes.remove(<libvulpes:structuremachine>);
recipes.remove(<advancedrocketry:satellitepowersource:1>);
recipes.remove(<advancedrocketry:fueltank>);
recipes.remove(<advancedrocketry:advrocketmotor>);
recipes.remove(<advancedrocketry:rocketmotor>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:4>);
recipes.remove(<advancedrocketry:satellite>);

//add
recipes.addShaped(<libvulpes:structuremachine> * 16, [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>],[<ore:plateIron>, <techreborn:machine_frame:2>, <ore:plateIron>], [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);
recipes.addShaped(<advancedrocketry:rocketmotor>, [[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>],[<ore:plateMithril>, <ore:plateTitanium>, <ore:plateMithril>], [<ore:plateTitanium>, <ore:plateMithril>, <ore:plateTitanium>]]);
recipes.addShaped(<advancedrocketry:satellitepowersource:1>, [[<advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>],[<advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>], [<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>]]);
recipes.addShaped(<advancedrocketry:fueltank>, [[<ore:stickTitaniumAluminide>, null, <ore:stickTitaniumAluminide>],[<ore:plateMithril>, null, <ore:plateMithril>], [<ore:stickTitaniumAluminide>, null, <ore:stickTitaniumAluminide>]]);
recipes.addShaped(<advancedrocketry:advrocketmotor>, [[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],[<ore:plateMithril>, <ore:plateTitaniumIridium>, <ore:plateMithril>], [<ore:plateTitaniumIridium>, <ore:plateMithril>, <ore:plateTitaniumIridium>]]);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:4>, [[null, <ore:stickCopper>, null],[<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>], [<advancedrocketry:ic:1>, <advancedrocketry:orescanner>, <advancedrocketry:ic:1>]]);
recipes.addShaped(<advancedrocketry:satellite>, [[<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>],[<ore:stickTitanium>, <advancedrocketry:ic:3>, <ore:stickTitanium>], [<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>]]);