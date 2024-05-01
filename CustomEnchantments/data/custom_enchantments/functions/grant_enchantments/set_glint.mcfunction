item replace entity @s container.0 from entity @p player.cursor
execute store success score glint custom_enchantments.index run data get entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
execute if score glint custom_enchantments.index matches 0 run data modify entity @s Items[0].components."minecraft:enchantments" merge value {show_in_tooltip:1b,levels:{"minecraft:vanishing_curse":0}}
item replace entity @p player.cursor from entity @s container.0
