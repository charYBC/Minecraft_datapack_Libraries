execute store result score @s BookShelfAround run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 jigsaw replace bookshelf
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 bookshelf replace jigsaw
execute if score @s BookShelfAround matches 15.. run scoreboard players set @s BookShelfAround 15
return 1