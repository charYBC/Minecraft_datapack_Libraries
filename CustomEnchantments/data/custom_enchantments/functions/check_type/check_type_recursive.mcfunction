execute if score @s index > maxindex index run return 1
execute store result storage custom_enchant:storage EnchantData.index int 1 run scoreboard players get @s index
scoreboard players add @s index 1
function custom_enchantments:check_type/set_temp_type with storage custom_enchant:storage EnchantData
function custom_enchantments:check_type/check_type with storage custom_enchant:storage Temp
function custom_enchantments:check_type/check_type_recursive
