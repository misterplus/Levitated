import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.event.EnderTeleportEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import mods.ctutils.utils.Math;
import mods.ctutils.commands.Commands;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityEquipmentSlot;

//every ender teleport now creates a extraterrestrail matter on the ground
events.onEnderTeleport(function(event as EnderTeleportEvent) {
	if (!event.entityLivingBase.world.remote && isNull(event.entityLivingBase.definition)) {
		event.entityLivingBase.world.spawnEntity(<deepmoblearning:living_matter_extraterrestrial>.createEntityItem(event.entityLivingBase.world, event.targetX, event.targetY, event.targetZ));
	}
});



//breaking endstone with hands now drops endstone shards
events.onBlockBreak(function(event as BlockBreakEvent) {
	if (!event.world.remote && event.blockState == <blockstate:minecraft:end_stone> && event.isPlayer && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(event.player) && event.player.creative == false) {
		if (isNull(event.player.currentItem) || !event.player.currentItem.canHarvestBlock(<blockstate:minecraft:end_stone>)) {
			event.world.spawnEntity(<tconstruct:shard>.withTag({Material: "endstone"}).createEntityItem(event.world, event.x, event.y, event.z));
		}
	}
});

//feather falling enchant
events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
	if (!event.entityLivingBase.world.remote && event.entityLivingBase instanceof IPlayer) {
		var player as IPlayer;
		player = event.entityLivingBase;
		if !isNull(player.getItemInSlot(IEntityEquipmentSlot.feet())) {
			var enchant = <enchantment:contenttweaker:feather_falling>.makeEnchantment(1).makeTag() as IData;
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
				time = time - 1;
				player.update(data + {"PlaneCountdown": time});
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
				event.player.world.spawnEntity(<minecraft:feather>.withTag({EasterEgg: 1}).createEntityItem(event.player.world, player.x, 255, player.z));
				player.update(data + {"FallingDistance": distance - 100});
			}
		}
	}
});

//the end
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
	var player = event.player as IPlayer;
	if (!player.world.remote && event.to == 6666) {
		var data = player.data;
		if !(data has "HasFinished") {
			player.give(<contenttweaker:trophy>);
			player.update(data + {"HasFinished": 1});
		}
	}
	if (!player.world.remote && event.to == 2000) {
        player.executeCommand("gamerule sendCommandFeedback false");
        player.executeCommand("gamerule commandBlockOutput false");
        player.executeCommand("gamerule logAdminCommands false");
        player.executeCommand("advancement grant @s only triumph:levitated/easteregg/valkyrja");
        player.executeCommand("setblock -1536 64 -1524 air");
        player.executeCommand("setblock -1536 64 -1524 redstone_block");
		player.executeCommand("gamemode 2 @s");
	}
	if (!player.world.remote && event.to != 2000 && !player.creative ) {
		player.executeCommand("gamemode 0 @s");
	}
});