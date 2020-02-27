import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

//Altar
recipes.addShaped(<zensummoning:altar>, [[<ore:ingotSoularium>, <botania:animatedtorch>, <ore:ingotSoularium>],[<ore:blockQuartz>, <tombstone:voodoo_poppet>, <appliedenergistics2:quartz_block>], [<ore:ingotManyullyn>, <ore:blockSilver>, <ore:ingotManyullyn>]]);

var pig = SummoningInfo.create()
        .setCatalyst(<contenttweaker:rotten_pork>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_carrot> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:dye:9>, <minecraft:leather> * 2])
        .setWeight(0.5);

SummoningDirector.addSummonInfo(
    pig.addMob(MobInfo.create()
            .setMob("minecraft:pig")
            .setCount(1)
            .setData({"Health": 1})
        )
);

SummoningDirector.addSummonInfo(
    pig.addMob(MobInfo.create()
            .setMob("minecraft:zombie_pigman")
            .setCount(1)
            .setData({"HandItems":[{"Count":1,"id":"golden_sword"}]})
        )
);

var chicken = SummoningInfo.create()
        .setCatalyst(<minecraft:feather>)
        .setConsumeCatalyst(true)
        .setReagents([<botania:worldseed> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:leather> * 2])
        .setWeight(0.5);

SummoningDirector.addSummonInfo(
        chicken.addMob(MobInfo.create()
        .setMob("minecraft:chicken")
        .setCount(1)
        .setData({"Health": 1})
    )  
);

SummoningDirector.addSummonInfo(
        chicken.addMob(MobInfo.create()
        .setMob("minecraft:chicken")
        .setCount(1)
        .setData({"Health": 0})
    )  
);

