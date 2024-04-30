function custom_enchantments:check_type/check_bounds with storage custom_enchant:storage EnchantData
execute if score success custom_enchantments.index matches 0 run return 1
execute store result storage custom_enchant:storage EnchantData.index int 1 run scoreboard players get @s custom_enchantments.index
scoreboard players add @s custom_enchantments.index 1
function custom_enchantments:check_type/set_temp_type with storage custom_enchant:storage EnchantData
function custom_enchantments:check_type/check_type with storage custom_enchant:storage Temp
function custom_enchantments:check_type/check_type_recursive
