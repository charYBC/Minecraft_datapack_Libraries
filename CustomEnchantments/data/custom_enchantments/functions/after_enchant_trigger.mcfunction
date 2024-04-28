tag @s add after_enchant
tag @s add can_enchant
advancement revoke @s only custom_enchantments:picked_up

advancement revoke @s only custom_enchantments:enchanted
scoreboard players set @s enchanting_table_distance 0
execute anchored eyes run function custom_enchantments:get_enchanting_table_position
