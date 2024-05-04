function custom_enchantments:grant_enchantments/set_temp_enchantments with storage custom_enchant:storage EnchantData
scoreboard players set @s custom_enchantments.index 0
execute if items entity @s player.crafting.0 minecraft:enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run data modify storage custom_enchant:storage EnchantData.slot set value 0
execute if items entity @s player.crafting.1 minecraft:enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run data modify storage custom_enchant:storage EnchantData.slot set value 1
execute if items entity @s player.crafting.2 minecraft:enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run data modify storage custom_enchant:storage EnchantData.slot set value 2
execute if items entity @s player.crafting.3 minecraft:enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run data modify storage custom_enchant:storage EnchantData.slot set value 3
execute at @s as 0000007b-0000-007b-0000-007b0000007b run function custom_enchantments:init_enchant with storage custom_enchant:storage EnchantData
data modify storage custom_enchant:storage EnchantData.index set value 0
function custom_enchantments:check_enchantments_recursive

execute at @s as 0000007b-0000-007b-0000-007b0000007b run function custom_enchantments:set_data_to_inventory with storage custom_enchant:storage EnchantData
scoreboard players set @s custom_enchantments.index 10000000
xp add @s -2 levels