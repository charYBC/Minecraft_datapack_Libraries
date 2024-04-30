scoreboard players add @s enchanting_table_distance 1
execute if score @s enchanting_table_distance matches 24 run return 0
execute positioned ^ ^ ^ if block ~ ~ ~ enchanting_table run function custom_enchantments:get_bookshelfs_around
execute positioned ^ ^ ^ if block ~ ~ ~ enchanting_table run return 1
execute positioned ^ ^ ^0.25 run function custom_enchantments:get_enchanting_table_position
