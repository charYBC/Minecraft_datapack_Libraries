execute store result storage custom_enchant:storage EnchantData.index int 1 run scoreboard players get @s custom_enchantments.index
scoreboard players add @s custom_enchantments.index 1

function custom_enchantments:grant_enchantments/out_bounds_check with storage custom_enchant:storage EnchantData
execute if score success custom_enchantments.index matches 0 run return 1
function custom_enchantments:set_temp_ench with storage custom_enchant:storage EnchantData
execute at @s as 0000007b-0000-007b-0000-007b0000007b run function custom_enchantments:grant_enchantments with storage custom_enchant:storage EnchantData
function custom_enchantments:check_enchantments_recursive
