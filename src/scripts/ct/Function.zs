#priority 13
import mods.zensummoning.SummoningInfo;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import mods.jei.JEI.hide;

//Zen Summoning
function pig(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<contenttweaker:rotten_pork>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_carrot> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:dye:9>, <minecraft:leather> * 2])
        .setWeight(w);
}
function chicken(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<minecraft:feather>)
        .setConsumeCatalyst(true)
        .setReagents([<botania:worldseed> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:leather> * 2])
        .setWeight(w);
}
function cow(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<tconstruct:edible:10>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:wheat> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <enderio:item_material:49>, <minecraft:leather> * 2])
        .setWeight(w);
}
function sheep(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<minecraft:wool>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:wheat> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:string> * 2])
        .setWeight(w);
}
function villager(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<minecraft:rotten_flesh>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_apple>, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:splash_potion>.withTag({Potion: "minecraft:weakness"}), <minecraft:emerald>])
        .setWeight(w);
}
function blue_slime(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<minecraft:slime_ball>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:dye:4> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:manaresource:23> * 2])
        .setWeight(w);
}
function special_blaze_0(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<thermalfoundation:material:1025>)
        .setConsumeCatalyst(true)
        .setReagents([<thermalfoundation:material:2049> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:manaresource:23> * 2, <minecraft:snowball> * 2])
        .setWeight(w);
}
function special_blaze_1(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<thermalfoundation:material:1026>)
        .setConsumeCatalyst(true)
        .setReagents([<thermalfoundation:material:2051> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:manaresource:23> * 2, <techreborn:dust:44> * 2])
        .setWeight(w);
}
function special_blaze_2(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<thermalfoundation:material:1027>)
        .setConsumeCatalyst(true)
        .setReagents([<thermalfoundation:material:2053> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:manaresource:23> * 2, <techreborn:dust:35> * 2])
        .setWeight(w);
}
}
function guardian(w as int) as SummoningInfo {
    return SummoningInfo.create()
        .setCatalyst(<minecraft:prismarine_shard>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:fish> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:fish:1> * 2, <minecraft:fish:3> * 2])
        .setWeight(w);
}

//JEI
function hideOnly (item as IItemStack, r as int[]) {
    var def = item.definition;
    for i in r {
        hide(def.makeStack(i));
    }
}
function hideExcept (item as IItemStack, e as int[], f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        if !(e has i) {
            hide(def.makeStack(i));
        }
    }
}
function hideAll (item as IItemStack, f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        hide(def.makeStack(i));
    }
}

//Duplicate
function remove (item as IItemStack, f as int, t as int) {
    var def = item.definition;
    for i in f to t {
        recipes.remove(def.makeStack(i));
    }
}
function removeOnly (item as IItemStack, r as int[]) {
    var def = item.definition;
    for i in r {
        recipes.remove(def.makeStack(i));
    }
}
function plating (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.RollingMachine.addRecipe(output, 20, 20, 200, input * 1);
}
function sheeting (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.RollingMachine.addRecipe(output, 300, 200, 400, input * 1);
}
function plateBlock (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.PlatePresser.addRecipe(output * 4, input * 1);
}
function rodding (input as IOreDictEntry, output as IItemStack) {
    mods.advancedrocketry.Lathe.addRecipe(output * 2, 40, 20, input * 1);
    recipes.addShaped(output * 2, [[null, null, input],[null, input, null], [input, null, null]]);
}
function meltRod (input as IItemStack, output as ILiquidStack) {
    mods.tconstruct.Melting.removeRecipe(output, input);
    mods.tconstruct.Melting.addRecipe(output * 72, input);
}

//Stage
function stageItem (stage as string, name as string, item as IItemStack) {
    mods.ItemStages.addItemStage(stage, item);
    mods.ItemStages.setUnfamiliarName(name, item);
}

//Item definitions
function getItemID (item as IItemStack) as string {
    return item.definition.id;
}

function getEntityID (entity as IEntity) as string {
    return entity.definition.id;
}