
execute store result storage custom_enchant:storage EnchantData.index int 1 run scoreboard players get @s custom_enchantments.index
scoreboard players add @s custom_enchantments.index 1

function custom_enchantments:grant_enchantments/out_bounds_check with storage custom_enchant:storage EnchantData
execute if score success custom_enchantments.index matches 0 run return 1

function custom_enchantments:grant_enchantments/grant_enchantments with storage custom_enchant:storage EnchantData
function custom_enchantments:grant_enchantments/check_enchantments_recursive