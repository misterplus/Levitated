import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

//every ender teleport now creates a extraterrestrail matter on the ground
events.onEnderTeleport(function(event as crafttweaker.event.EnderTeleportEvent) {
	event.entityLivingBase.world.spawnEntity(<deepmoblearning:living_matter_extraterrestrial>.createEntityItem(event.entityLivingBase.world, event.targetX, event.targetY, event.targetZ));
});
