import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import crafttweaker.player.IPlayer;

//CCB related
recipes.addShapeless(<contenttweaker:pottery_clay> * 2, [<ore:clay>, <minecraft:dye:15>]);
recipes.addShaped(<contenttweaker:ccb_base>, [[<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>], [<minecraft:redstone>, <contenttweaker:clay_board>, <minecraft:redstone>], [<immersiveengineering:material:20>, <enderio:item_basic_capacitor>, <immersiveengineering:material:20>]]);
furnace.addRecipe(<contenttweaker:ccb>, <contenttweaker:ccb_base>, 1);
recipes.addShaped(<contenttweaker:clay_board>, [[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>],[<contenttweaker:pottery_clay>, <contenttweaker:pottery_clay>]]);

//Solder related
recipes.addShapeless(<contenttweaker:solder_powder> * 2, [<botania:pestleandmortar>.reuse(),<ore:dustLead>,<ore:dustTin>]);
recipes.addShaped(<contenttweaker:solder_bucket>, [[null, <contenttweaker:solder_powder>, null],[<contenttweaker:solder_powder>, <minecraft:bucket>, <contenttweaker:solder_powder>], [null, <contenttweaker:solder_powder>, null]]);

//Paper planes
recipes.addHiddenShaped("paper_plane_6", <contenttweaker:paper_plane_6>, [[null, null, null], [null, <contenttweaker:paper_plane_5>, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_5", <contenttweaker:paper_plane_5>, [[null, null, null], [null, null, null], [<contenttweaker:paper_plane_4>, null, null]]);
recipes.addHiddenShaped("paper_plane_4", <contenttweaker:paper_plane_4>, [[null, null, null], [null, null, <contenttweaker:paper_plane_3>], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_3", <contenttweaker:paper_plane_3>, [[null, <contenttweaker:paper_plane_2>, null], [null, null, null], [null, null, null]]);
recipes.addHiddenShaped("paper_plane_2", <contenttweaker:paper_plane_2>, [[null, null, null], [null, null, null], [null, <contenttweaker:paper_plane_1>, null]]);
recipes.addHiddenShaped("paper_plane_1", <contenttweaker:paper_plane_1>, [[null, null, null], [null, <contenttweaker:paper_plane_0>, null], [null, null, null]]);

//Overworld related
recipes.addShaped(<contenttweaker:overworld_star>, [[<ore:ingotSignalum>, <ore:ingotElvenElementium>, <ore:ingotLumium>],[<ore:ingotEvilMetal>, <ore:netherStar>, <ore:ingotDemonicMetal>], [<ore:ingotManyullyn>, <ore:ingotTerrasteel>, <ore:ingotHOPGraphite>]]);

//Tome of origin
recipes.addShaped(<contenttweaker:origin_book>, [[<minecraft:piston>, <minecraft:ender_pearl>, <minecraft:piston>],[<minecraft:piston>, <minecraft:book>, <minecraft:piston>], [<minecraft:piston>, <minecraft:bed:*>, <minecraft:piston>]]);

//Levity Core
FluidToItem.transform(<contenttweaker:core>, <fluid:vapor_of_levity>, [<deepmoblearning:pristine_matter_shulker> * 16, <enderio:item_alloy_ingot:8> * 64, <minecraft:shulker_shell> * 32], true);

//Glitched obsidian
var end_plate = AgglomerationMultiblock.create().checker(<minecraft:obsidian>, <minecraft:purpur_block>);
var glitched_oby = AgglomerationRecipe.create().output(<contenttweaker:glitched_obsidian>).inputs([<deepmoblearning:glitch_infused_ingot>, <minecraft:obsidian>]).manaCost(100000).multiblock(end_plate);
Agglomeration.addRecipe(glitched_oby);

//Laputa Shard
var shard_plate = AgglomerationMultiblock.create().checker(<enderio:block_alloy:8>, <botania:storage:1>);
var shard = AgglomerationRecipe.create().output(<contenttweaker:shard>).inputs([<botania:laputashard:19>, <tconstruct:shard>.withTag({Material: "endstone"})]).manaCost(1000000).multiblock(shard_plate);
Agglomeration.addRecipe(shard);

//Blue lotus
FluidToItem.transform(<contenttweaker:blue_lotus>, <fluid:mana_fluid>, [<stygian:endglow>], true);

//Scroll
FluidToFluid.transform(<fluid:fluidsulfuricacid>, <fluid:water>, [<ore:dustSulfur> * 8], true);
FluidToItem.transform(<contenttweaker:scroll>, <fluid:fluidsulfuricacid>, [<minecraft:paper> * 4], true);

//Contract
var contracted_villager = <extrautils2:goldenlasso>.withTag({Animal: {ForgeData: {Contracted: 1 as byte}, id: "minecraft:villager"}}).transformReplace(<extrautils2:goldenlasso>);
recipes.addShaped(<contenttweaker:contract>, [[<minecraft:string>, <tconstruct:materials:16>, <minecraft:string>], [contracted_villager, contracted_villager, contracted_villager], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

//Chaos Pearl
recipes.addShapeless("chaos_pearl", <contenttweaker:chaos_pearl>, [<minecraft:ender_pearl>, <tconstruct:shard>.withTag({Material: "endstone"})],
function(out, ins, cInfo){
    var player = cInfo.player as IPlayer;
    var data = player.data;
    var persist = data.memberGet("PlayerPersisted");
    if (persist has "ChaosCrafted") {
        var crafted = persist.memberGet("ChaosCrafted") as int + 1;
        if (crafted <= 10) {
            return out.withTag({display: {Lore: ["ID." + crafted]}});
        }
    }
    else {
        return out.withTag({display: {Lore: ["ID.1"]}});
    }
	return null;
},
function(out, cInfo, player){
    var data = player.data;
    var persist = data.memberGet("PlayerPersisted");
    if (persist has "ChaosCrafted") {
        var crafted = persist.memberGet("ChaosCrafted") as int + 1;
        player.update(data + {"PlayerPersisted": {"ChaosCrafted": crafted}});
    }
    else {
        player.update(data + {"PlayerPersisted": {"ChaosCrafted": 1 as int}});
    }
});

//Snow Globe
var globe_plate = AgglomerationMultiblock.create().checker(<wizardry:cloud>, <wizardry:wisdom_wood_pigmented_planks>);
var globe = AgglomerationRecipe.create().output(<contenttweaker:globe>).inputs([<contenttweaker:shard>, <contenttweaker:core>, <contenttweaker:dragon_spirit>, <contenttweaker:crystal>, <contenttweaker:potion>, <contenttweaker:scroll_ignis>, <contenttweaker:apple>, <contenttweaker:contract>, <contenttweaker:dna>]).manaCost(5000000).multiblock(globe_plate);
Agglomeration.addRecipe(globe);

//Potion
recipes.addShaped(<contenttweaker:potion>, [[<extrautils2:drum:1>.withTag({Fluid: {FluidName: "potion", Amount: 256000, Tag: {Potion: "cofhcore:levitation"}}})], [<botania:vial>]]);