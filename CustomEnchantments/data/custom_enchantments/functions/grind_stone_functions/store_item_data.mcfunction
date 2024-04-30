execute at @s as @e[type=chest_minecart,tag=copy_data] if score @s custom_enchantments_id = @p custom_enchantments_id run item replace entity @s container.0 from entity @p player.cursor
item modify entity @s player.cursor custom_enchantments:remove_all_data
say 1