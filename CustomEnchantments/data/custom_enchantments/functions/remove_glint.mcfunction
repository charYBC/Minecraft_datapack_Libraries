item replace entity @s container.0 from entity @p player.crafting.0
execute store result score glint custom_enchantments.index run data get entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
execute if score glint custom_enchantments.index matches 0 run data remove entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
item replace entity @p player.crafting.0 from entity @s container.0

item replace entity @s container.0 from entity @p player.crafting.1
execute store result score glint custom_enchantments.index run data get entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
execute if score glint custom_enchantments.index matches 0 run data remove entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
item replace entity @p player.crafting.1 from entity @s container.0

item replace entity @s container.0 from entity @p player.crafting.2
execute store result score glint custom_enchantments.index run data get entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
execute if score glint custom_enchantments.index matches 0 run data remove entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
item replace entity @p player.crafting.2 from entity @s container.0

item replace entity @s container.0 from entity @p player.crafting.3
execute store result score glint custom_enchantments.index run data get entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
execute if score glint custom_enchantments.index matches 0 run data remove entity @s Items[0].components."minecraft:enchantments".levels."minecraft:vanishing_curse"
item replace entity @p player.crafting.3 from entity @s container.0
