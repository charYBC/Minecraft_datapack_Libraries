tag @s add in_grind_stone
execute store result score @s enter_item_count if items entity @s inventory.* *
scoreboard players set @s interact_grind_stone 0