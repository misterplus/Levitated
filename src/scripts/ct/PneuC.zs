import mods.pneumaticcraft.explosioncrafting;
import mods.pneumaticcraft.pressurechamber;

//remove
recipes.remove(<pneumaticcraft:printed_circuit_board>);
explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
explosioncrafting.removeRecipe(<pneumaticcraft:compressed_iron_block>);
pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);

//add
//Recipe fixes
recipes.addShaped(<pneumaticcraft:pressure_chamber_wall> * 8, [[<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>],[<extrautils2:decorativesolid:3>, null, <extrautils2:decorativesolid:3>], [<pneumaticcraft:ingot_iron_compressed>, <extrautils2:decorativesolid:3>, <pneumaticcraft:ingot_iron_compressed>]]);
explosioncrafting.addRecipe(<ore:ingotSteel>, <pneumaticcraft:ingot_iron_compressed>, 20);
explosioncrafting.addRecipe(<ore:blockSteel>, <pneumaticcraft:compressed_iron_block>, 20);
pressurechamber.addRecipe([<ore:ingotSteel>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.addRecipe([<ore:blockSteel>], 2.0, [<pneumaticcraft:compressed_iron_block>]);
pressurechamber.addRecipe([<ore:enderpearl> * 2, <ore:gunpowder> * 2, <minecraft:rotten_flesh> * 2, <ore:plasticGreen> * 2, <minecraft:water_bucket>], 1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

//Chassiss
pressurechamber.addRecipe([<enderio:item_material>, <extrautils2:decorativesolid:3>, <enderio:item_material:51>, <pneumaticcraft:printed_circuit_board>], 4.0, [<enderio:item_material:1>]);
pressurechamber.addRecipe([<enderio:item_material>, <extrautils2:decorativesolid:3>, <enderio:item_material:52>, <pneumaticcraft:printed_circuit_board>], 4.5, [<enderio:item_material:53>]);
pressurechamber.addRecipe([<enderio:item_material:66>, <extrautils2:decorativesolid:3>, <enderio:item_material:67>, <pneumaticcraft:printed_circuit_board>], -0.25, [<enderio:item_material:54>]);

//Rainbow gen
pressurechamber.addRecipe([
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrautils2:ingredients:0>
    ], 4.5 as double, [<extrautils2:rainbowgenerator:2>]);
pressurechamber.addRecipe([
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    <extrautils2:ingredients:0>
    ], 4.5 as double, [<extrautils2:rainbowgenerator:1>]);
mods.pneumaticcraft.assembly.addLaserRecipe(<contenttweaker:rainbowgen>, <extrautils2:rainbowgenerator:0>);