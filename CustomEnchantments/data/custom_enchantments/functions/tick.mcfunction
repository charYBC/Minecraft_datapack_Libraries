execute as @a store result score @s XpLevel run xp query @s levels
execute as @a[tag=can_enchant] if items entity @s player.cursor * run function custom_enchantments:check_type/start_type_loop