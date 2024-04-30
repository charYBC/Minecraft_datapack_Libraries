function custom_enchantments:grant_enchantments/set_temp_enchantments with storage custom_enchant:storage EnchantData
scoreboard players set @s index 0
execute if items entity @s player.cursor *[minecraft:custom_data~{hascustomenchant:1}] run return 0
data modify storage custom_enchant:storage EnchantData.index set value 0
function custom_enchantments:grant_enchantments/check_enchantments_recursive
scoreboard players operation @s index = maxindex index
scoreboard players add @s index 1
