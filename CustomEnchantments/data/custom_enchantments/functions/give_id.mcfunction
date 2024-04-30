scoreboard players operation @s custom_enchantments_id = global custom_enchantments_id
scoreboard players add global custom_enchantments_id 1
execute at @s run summon chest_minecart 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Type:"oak",Tags:["copy_data"]}
execute positioned 0 0 0 run scoreboard players operation @e[type=chest_minecart,tag=copy_data,sort=nearest,limit=1] custom_enchantments_id = @s custom_enchantments_id
execute positioned 0 0 0 run tp @e[type=chest_minecart,tag=copy_data,sort=nearest,limit=1] 0 10000000 0
