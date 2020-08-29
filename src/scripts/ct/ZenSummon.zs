import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
import scripts.ct.Function;

//Altar
recipes.addShaped(<zensummoning:altar>, [[<ore:ingotSoularium>, <botania:animatedtorch>, <ore:ingotSoularium>],[<ore:blockQuartz>, <tombstone:voodoo_poppet>, <appliedenergistics2:quartz_block>], [<ore:ingotManyullyn>, <ore:blockSilver>, <ore:ingotManyullyn>]]);

var infos = [] as SummoningInfo[];

infos += Function.pig(9).addMob(MobInfo.create().setMob("minecraft:pig"));
infos += Function.pig(1).addMob(MobInfo.create()
                .setMob("minecraft:zombie_pigman")
                .setData({"HandItems":[{"Count":1,"id":"golden_sword"}]})
        );
infos += Function.chicken(9).addMob(MobInfo.create().setMob("minecraft:chicken"));
infos += Function.chicken(1).addMob(MobInfo.create()
                .setMob("minecraft:chicken")
                .setData({"Health": 0})
        );
infos += Function.cow(9).addMob(MobInfo.create().setMob("minecraft:cow"));
infos += Function.cow(1).addMob(MobInfo.create()
                .setMob("minecraft:cow")
                .setData({"Health": 0})
        );
infos += Function.sheep(9).addMob(MobInfo.create().setMob("minecraft:sheep"));
infos += Function.sheep(1).addMob(MobInfo.create()
                .setMob("minecraft:sheep")
                .setData({"Health": 0})
        );
infos += Function.villager(1).addMob(MobInfo.create().setMob("minecraft:villager"));
infos += Function.blue_slime(1).addMob(MobInfo.create().setMob("tconstruct:blueslime"));
infos += Function.special_blaze_0(1).addMob(MobInfo.create().setMob("thermalfoundation:blizz"));
infos += Function.special_blaze_1(1).addMob(MobInfo.create().setMob("thermalfoundation:blitz"));
infos += Function.special_blaze_2(1).addMob(MobInfo.create().setMob("thermalfoundation:basalz"));

for info in infos {
        SummoningDirector.addSummonInfo(info);
}