#loader contenttweaker
#priority 12

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;

var solder = VanillaFactory.createFluid("solder", Color.fromHex("7F7F7F"));
solder.density = 1000;
solder.temperature = 1000;
solder.colorize = false;
solder.luminosity = 10;
solder.viscosity = 5000;
solder.stillLocation = "contenttweaker:fluids/solder_still";
solder.flowingLocation = "contenttweaker:fluids/solder_flow";
solder.material = <blockmaterial:lava>;
solder.register();

var nuclear = VanillaFactory.createFluid("nuclear", Color.fromHex("3D8A19"));
nuclear.density = 1000;
nuclear.temperature = 10000;
nuclear.luminosity = 10;
nuclear.viscosity = 5000;
nuclear.stillLocation = "contenttweaker:fluids/nuclear_still";
nuclear.flowingLocation = "contenttweaker:fluids/nuclear_flow";
nuclear.material = <blockmaterial:lava>;
nuclear.register();