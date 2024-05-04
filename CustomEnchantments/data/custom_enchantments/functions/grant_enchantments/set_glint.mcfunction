item replace entity @s container.0 from entity @p player.cursor
execute if score glint custom_enchantments.index matches 0 run data modify entity @s Items[0].components."minecraft:enchantments" set value true
item replace entity @p player.cursor from entity @s container.0
