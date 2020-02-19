import mods.contenttweaker.enchantments.EnchantmentBuilder;
var feather_falling = EnchantmentBuilder.create("feather_falling");
feather_falling.allowedOnBooks = true;
feather_falling.applicableSlots = [feet];
feather_falling.curse = false;
feather_falling.canApplyAtEnchantmentTable = function(thisEnch, item) {
    return false;
};
feather_falling.register();