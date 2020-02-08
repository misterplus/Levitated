import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.event.EnderTeleportEvent;
import crafttweaker.event.BlockBreakEvent;

//every ender teleport now creates a extraterrestrail matter on the ground
events.onEnderTeleport(function(event as EnderTeleportEvent) {
	event.entityLivingBase.world.spawnEntity(<deepmoblearning:living_matter_extraterrestrial>.createEntityItem(event.entityLivingBase.world, event.targetX, event.targetY, event.targetZ));
});

//breaking endstone with hands now drops endstone shards
events.onBlockBreak(function(event as BlockBreakEvent) {
	if (event.blockState == <blockstate:minecraft:end_stone>) & (event.isPlayer == true) & isNull(event.player.currentItem) & (event.player.creative == false) {
		event.world.spawnEntity(<tconstruct:shard>.withTag({Material: "endstone"}).createEntityItem(event.world, event.x, event.y, event.z));
	}
});



