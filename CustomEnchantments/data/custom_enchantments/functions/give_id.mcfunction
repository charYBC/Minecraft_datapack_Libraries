scoreboard players operation @s custom_enchantments.id = global custom_enchantments.id
scoreboard players add global custom_enchantments.id 1
execute at @s run summon chest_minecart 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Type:"oak",Tags:["copy_data"]}
execute positioned 0 0 0 run scoreboard players operation @e[type=chest_minecart,tag=copy_data,sort=nearest,limit=1] custom_enchantments.id = @s custom_enchantments.id
execute positioned 0 0 0 run tp @e[type=chest_minecart,tag=copy_data,sort=nearest,limit=1] 0 10000000 0
