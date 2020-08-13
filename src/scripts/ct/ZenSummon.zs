import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

//Altar
recipes.addShaped(<zensummoning:altar>, [[<ore:ingotSoularium>, <botania:animatedtorch>, <ore:ingotSoularium>],[<ore:blockQuartz>, <tombstone:voodoo_poppet>, <appliedenergistics2:quartz_block>], [<ore:ingotManyullyn>, <ore:blockSilver>, <ore:ingotManyullyn>]]);

var infos = [] as SummoningInfo[];
var pig = SummoningInfo.create()
        .setCatalyst(<contenttweaker:rotten_pork>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:golden_carrot> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <minecraft:dye:9>, <minecraft:leather> * 2])
        .setWeight(0.5);
var chicken = SummoningInfo.create()
        .setCatalyst(<minecraft:feather>)
        .setConsumeCatalyst(true)
        .setReagents([<botania:worldseed> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:leather> * 2])
        .setWeight(0.5);
var cow = SummoningInfo.create()
        .setCatalyst(<tconstruct:edible:10>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:wheat> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <enderio:item_material:49>, <minecraft:leather> * 2])
        .setWeight(0.5);
var sheep = SummoningInfo.create()
        .setCatalyst(<minecraft:wool>)
        .setConsumeCatalyst(true)
        .setReagents([<minecraft:wheat> * 2, <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}), <botania:dye>, <minecraft:string> * 2])
        .setWeight(0.5);

infos += pig.addMob(MobInfo.create()
            .setMob("minecraft:pig")
            .setCount(1)
            .setData({"Health": 1})
        );
infos += pig.addMob(MobInfo.create()
            .setMob("minecraft:zombie_pigman")
            .setCount(1)
            .setData({"HandItems":[{"Count":1,"id":"golden_sword"}]})
        );
infos += chicken.addMob(MobInfo.create()
        .setMob("minecraft:chicken")
        .setCount(1)
        .setData({"Health": 1})
        );
infos += chicken.addMob(MobInfo.create()
        .setMob("minecraft:chicken")
        .setCount(1)
        .setData({"Health": 0})
        );
infos += cow.addMob(MobInfo.create()
        .setMob("minecraft:cow")
        .setCount(1)
        .setData({"Health": 1})
        );
infos += cow.addMob(MobInfo.create()
        .setMob("minecraft:cow")
        .setCount(1)
        .setData({"Health": 0})
        );
infos += sheep.addMob(MobInfo.create()
        .setMob("minecraft:sheep")
        .setCount(1)
        .setData({"Health": 0})
        );
infos += sheep.addMob(MobInfo.create()
        .setMob("minecraft:sheep")
        .setCount(1)
        .setData({"Health": 1})
        );
for info in infos {
        SummoningDirector.addSummonInfo(info);
}  
