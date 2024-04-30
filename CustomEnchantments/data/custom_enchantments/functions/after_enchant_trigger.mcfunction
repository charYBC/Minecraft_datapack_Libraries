tag @s add after_enchant
tag @s add can_enchant
advancement revoke @s only custom_enchantments:picked_up
advancement revoke @s only custom_enchantments:enchanted
scoreboard players set @s enchanting_table_distance 0
execute store result score current XpLevel run xp query @s levels
scoreboard players operation @s XpLevel -= current XpLevel
execute anchored eyes run function custom_enchantments:get_enchanting_table_position
execute if score @s XpLevel matches 1 if score @s BookShelfAround matches 5.. run scoreboard players set @s BookShelfAround 5
execute if score @s XpLevel matches 2 if score @s BookShelfAround matches 10.. run scoreboard players set @s BookShelfAround 10