execute as @a store result score @s custom_enchantments.XpLevel run xp query @s levels
execute as @a[tag=can_enchant] if items entity @s player.cursor * run function custom_enchantments:check_type/start_type_loop
#execute as @a if score @s interact_grind_stone matches 1.. run function custom_enchantments:grind_stone_functions/initialize_data_enter
#execute as @a[tag=in_grind_stone] if items entity @s player.cursor *[minecraft:custom_data~{hascustomenchant:1}] run function custom_enchantments:grind_stone_functions/store_item_data
#execute as @a[tag=in_grind_stone] if items entity @s inventory.* *[minecraft:custom_data~{temp_remove:1}] at @s as @e[tag=copy_data] if score @s custom_enchantments.id = @p custom_enchantments.id run function custom_enchantments:grind_stone_functions/set_back
execute as @a if items entity @s player.crafting.* *[minecraft:custom_data~{hascustomenchant:1}] if items entity @s player.crafting.* minecraft:grindstone run function custom_enchantments:remove_enchantment
