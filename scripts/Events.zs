import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.event.EnderTeleportEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.PlayerTickEvent;
import mods.ctutils.utils.Math;
import mods.ctutils.commands.Commands;

//every ender teleport now creates a extraterrestrail matter on the ground
events.onEnderTeleport(function(event as EnderTeleportEvent) {
	if (!event.entityLivingBase.world.remote & isNull(event.entityLivingBase.definition)) {
		event.entityLivingBase.world.spawnEntity(<deepmoblearning:living_matter_extraterrestrial>.createEntityItem(event.entityLivingBase.world, event.targetX, event.targetY, event.targetZ));
	}
});

//breaking endstone with hands now drops endstone shards
events.onBlockBreak(function(event as BlockBreakEvent) {
	if (!event.world.remote & event.blockState == <blockstate:minecraft:end_stone> & event.isPlayer & !extrautilities2.Tweaker.XUTweaker.isPlayerFake(event.player) & isNull(event.player.currentItem) & event.player.creative == false) {
		event.world.spawnEntity(<tconstruct:shard>.withTag({Material: "endstone"}).createEntityItem(event.world, event.x, event.y, event.z));
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