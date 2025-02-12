import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommandManager;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.event.EnderTeleportEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import mods.ctutils.utils.Math;
import scripts.ct.Function;

//every ender teleport now creates a extraterrestrail matter on the ground
events.onEnderTeleport(function(event as EnderTeleportEvent) {
	if (!event.entityLivingBase.world.remote && event.entityLivingBase instanceof IPlayer) {
		event.entityLivingBase.world.spawnEntity(<deepmoblearning:living_matter_extraterrestrial>.createEntityItem(event.entityLivingBase.world, event.targetX as float, event.targetY as float, event.targetZ as float));
	}
});

//breaking endstone with hands now drops endstone shards
//Also fixes Wyrmwood and menril double slabs not dropping themselves
static blacklist as IItemStack[] = [<buildinggadgets:buildingtool>, <buildinggadgets:exchangertool>, <buildinggadgets:copypastetool>, <buildinggadgets:destructiontool>] as IItemStack[];
events.onBlockBreak(function(event as BlockBreakEvent) {
	if (!event.world.remote && event.blockState == <blockstate:minecraft:end_stone> && event.isPlayer && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(event.player) && event.player.creative == false) {
		var item = event.player.currentItem;
		if (isNull(item) || (!item.canHarvestBlock(<blockstate:minecraft:end_stone>) && !(blacklist has item.definition.makeStack()))) {
			var r = Math.random() * 2 + 2;
			for i in 0 to r {
				event.world.spawnEntity(<tconstruct:shard>.withTag({Material: "endstone"}).createEntityItem(event.world, event.x, event.y, event.z));
            }
		}
	}
});

//feather falling enchant
static enchant as IData = <enchantment:contenttweaker:feather_falling>.makeEnchantment(1).makeTag() as IData;
events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
	if (!event.entityLivingBase.world.remote && event.entityLivingBase instanceof IPlayer) {
		var player as IPlayer = event.entityLivingBase;
		if !isNull(player.getItemInSlot(IEntityEquipmentSlot.feet())) {
			var boots = player.getItemInSlot(IEntityEquipmentSlot.feet());
			var tag = boots.tag as IData;
			var distance = Math.ceil(event.distance);
			if (tag has enchant && distance <= boots.maxDamage - boots.damage) {
				var data = player.data;
				player.setItemToSlot(IEntityEquipmentSlot.feet(), boots.withDamage(boots.damage + distance));
				if data has "FallingDistance" {
					distance = distance + data.memberGet("FallingDistance") as int;
					player.update(data + {"FallingDistance": distance});
				}
				else {
					player.update(data + {"FallingDistance": distance});
				}
				event.cancel();
			}
		}
	}
});

//paper plane related
events.onPlayerTick(function(event as PlayerTickEvent) {
	var player = event.player as IPlayer;
	if !player.world.remote {
		var data = player.data;
		if data has "PlaneCountdown" {
			var time = data.memberGet("PlaneCountdown") as int;
			if time > 0 {
				player.update(data + {"PlaneCountdown": time - 1});
			}
			else if time == 0 {
				player.give(<minecraft:feather>);
				player.update(data + {"PlaneCountdown": -1});
			}
		}
	}
});

//feather falling enchant
events.onPlayerTick(function(event as PlayerTickEvent) {
	var player = event.player as IPlayer;
	if !player.world.remote {
		var data = player.data;
		if data has "FallingDistance" {
			var distance = data.memberGet("FallingDistance") as int;
			if distance >= 100 {
				event.player.world.spawnEntity(<minecraft:feather>.withTag({EasterEgg: 1}).createEntityItem(event.player.world, player.x as float, 255 as float, player.z as float));
				player.update(data + {"FallingDistance": distance - 100});
			}
		}
	}
});

//change dimension event
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
	var player = event.player as IPlayer;
	if !player.world.remote {
		var s = server.commandManager as ICommandManager;
		//Bad Ending
		if event.to == 6666 {
			s.executeCommand(server, "gamestage silentadd " + player.name + " bad_ending");
		}
		//HaocenStar
		else if event.to == 2000 {
        	s.executeCommand(server, "gamerule sendCommandFeedback false");
        	s.executeCommand(server, "gamerule commandBlockOutput false");
        	s.executeCommand(server, "gamerule logAdminCommands false");
        	s.executeCommand(server, "advancement grant " + player.name + " only triumph:levitated/easteregg/valkyrie");
			s.executeCommand(server, "gamemode 2 " + player.name);
		}
		//Good Ending
		else if event.to == 2001 {
			s.executeCommand(server, "gamestage silentadd " + player.name + " good_ending");
		}
		if event.from == 2000 {
			s.executeCommand(server, "gamemode 0 " + player.name);
			s.executeCommand(server, "gamerule sendCommandFeedback true");
        	s.executeCommand(server, "gamerule commandBlockOutput true");
        	s.executeCommand(server, "gamerule logAdminCommands true");
		}
	}
});

//chaos pearl cooldown
events.onPlayerTick(function(event as PlayerTickEvent) {
	var player = event.player as IPlayer;
	if !player.world.remote {
		var data = player.data;
		if data has "ChaosCooldown" {
			var cd = data.memberGet("ChaosCooldown") as int;
			if cd > 0 {
				player.update(data + {"ChaosCooldown": cd - 1});
			}
		}
	}
});

//Additional Drops
static ess as IItemStack[string] = {
	"minecraft:wither_skeleton": <contenttweaker:essence_wither>,
	"minecraft:magma_cube": <contenttweaker:essence_magma>,
	"minecraft:zombie_pigman": <contenttweaker:essence_pigman>,
	"minecraft:ghast": <contenttweaker:essence_ghast>,
	"minecraft:blaze": <contenttweaker:essence_blaze>
} as IItemStack[string];
static animals as string[] = ["minecraft:pig", "minecraft:sheep", "minecraft:chicken", "minecraft:cow"] as string[];
events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
	var entity = event.entityLivingBase;
	if !entity.world.remote {
		if event.damageSource.trueSource instanceof IPlayer {
			var player as IPlayer = event.damageSource.trueSource;
			if player.hasGameStage("spell") {
				var id = Function.getEntityID(entity);
				if (id == "minecraft:ender_dragon" && !isNull(player.currentItem) && Function.getItemID(player.currentItem) == "extrautils2:lawsword") {
					event.addItem(<contenttweaker:dragon_spirit>);
				}
				else if Math.random() > 0.9 as double {
					if ess.keySet has id {
						event.addItem(ess[id]);
					}
					else if id == "minecraft:creeper" {
						var potions = player.activePotionEffects;
						for potion in potions {
							if potion.potion.name == "botania.potion.bloodthirst" {
								event.addItem(<contenttweaker:dna>);
								break;
							}
						}
					}
				}
			}
		}
	}
});

//SkyCity ID
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
	if !event.player.world.remote {
		event.player.world.getGameRules().addGameRule("skyCityID", "0", "Numeric");
	}
});