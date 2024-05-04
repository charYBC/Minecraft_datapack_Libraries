execute as @a store result score @s custom_enchantments.XpLevel run xp query @s levels
execute as @a[tag=can_enchant] if items entity @s player.cursor * run function custom_enchantments:check_type/start_type_loop

execute as @a if items entity @s player.crafting.* *[minecraft:custom_data~{hascustomenchant:1}] if items entity @s player.crafting.* minecraft:grindstone run function custom_enchantments:remove_enchantment


execute as @a if score @s custom_enchantments.XpLevel matches 2.. if items entity @s player.crafting.* #ench if items entity @s player.crafting.* enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run function custom_enchantments:start_type_loop
execute as @a if score @s custom_enchantments.XpLevel matches 2.. if items entity @s player.crafting.0 enchanted_book if items entity @s player.crafting.1 enchanted_book[minecraft:custom_data~{hascustomenchant:1}] run function custom_enchantments:start_type_loop
