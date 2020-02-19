#loader contenttweaker

import mods.contenttweaker.enchantments.EnchantmentBuilder;

var feather_falling = EnchantmentBuilder.create("feather_falling");
feather_falling.allowedOnBooks = false;
feather_falling.setRarityCommon();
feather_falling.setTypeFeed();
feather_falling.curse = false;
feather_falling.canApplyAtEnchantmentTable = function(thisEnch, item) {
    return true;
};
feather_falling.calcEnchantabilityMin = function(thisEnch, level) {
    return 5;
};
feather_falling.calcEnchantabilityMax = function(thisEnch, level) {
    return 20;
};
feather_falling.register();