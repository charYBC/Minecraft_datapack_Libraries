execute store result score @s custom_enchantments.BookShelfAround run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 jigsaw replace bookshelf
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 bookshelf replace jigsaw
execute if score @s custom_enchantments.BookShelfAround matches 15.. run scoreboard players set @s custom_enchantments.BookShelfAround 15
return 1