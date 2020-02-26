import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

//Altar
recipes.addShaped(<zensummoning:altar>, [[null, <botania:animatedtorch>, null],[<ore:gemQuartz>, <tombstone:voodoo_poppet>, <ore:crystalCertusQuartz>], [<ore:ingotManyullyn>, <ore:ingotManyullyn>, <ore:ingotManyullyn>]]);

//code not final
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<contenttweaker:rotten_pork>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_carrot> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:dye:9>, <minecraft:leather> * 2])
        .addMob(MobInfo.create()
            .setMob("minecraft:pig")
            .setCount(1)
            .setData({"Health": 1})
        )
        .setWeight(0.5)
        
);

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<contenttweaker:rotten_pork>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_carrot> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:dye:9>, <minecraft:leather> * 2])
        .addMob(MobInfo.create()
            .setMob("minecraft:zombie_pigman")
            .setCount(1)
            .setData({"HandItems":[{"Count":1,"id":"golden_sword"}]})
        )
        .setWeight(0.5)
);

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:feather>)
        .setConsumeCatalyst(true)
        .setReagents([<botania:worldseed> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:leather> * 2])
        .addMob(MobInfo.create()
            .setMob("minecraft:chicken")
            .setCount(1)
            .setData({"Health": 1})
        )
        .setWeight(0.5)
);

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:feather>)
        .setConsumeCatalyst(true)
        .setReagents([<botania:worldseed> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:leather> * 2])
        .addMob(MobInfo.create()
            .setMob("minecraft:chicken")
            .setCount(1)
            .setData({"Health": 4, "Passengers":[{"id":"zombie_pigman", "IsBaby":1, "HandItems":[{"Count":1,"id":"golden_sword"}]}]})
        )
        .setWeight(0.5)
);

