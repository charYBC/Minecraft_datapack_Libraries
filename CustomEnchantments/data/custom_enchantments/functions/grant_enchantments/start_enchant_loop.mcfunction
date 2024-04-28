scoreboard players set @s index 0

data modify storage custom_enchant:storage EnchantData.index set value 0
function custom_enchantments:grant_enchantments/check_enchantments_recursive
scoreboard players operation @s index = maxindex index
scoreboard players add @s index 1
