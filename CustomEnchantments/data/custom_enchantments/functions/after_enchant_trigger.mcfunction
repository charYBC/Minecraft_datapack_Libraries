tag @s add after_enchant
tag @s add can_enchant
advancement revoke @s only custom_enchantments:picked_up
advancement revoke @s only custom_enchantments:enchanted
scoreboard players set @s custom_enchantments.enchanting_table_distance 0
execute store result score current custom_enchantments.XpLevel run xp query @s levels
scoreboard players operation @s custom_enchantments.XpLevel -= current custom_enchantments.XpLevel
execute anchored eyes run function custom_enchantments:get_enchanting_table_position
execute if score @s custom_enchantments.XpLevel matches 1 if score @s custom_enchantments.BookShelfAround matches 5.. run scoreboard players set @s custom_enchantments.BookShelfAround 5
execute if score @s custom_enchantments.XpLevel matches 2 if score @s custom_enchantments.BookShelfAround matches 10.. run scoreboard players set @s custom_enchantments.BookShelfAround 10