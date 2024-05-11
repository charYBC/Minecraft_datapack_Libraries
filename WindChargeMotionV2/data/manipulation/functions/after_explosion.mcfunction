
execute as @e[tag=windcharge_motion] if score @s windcharge_motion.id = @p windcharge_motion.id run function manipulation:kill_entity

execute at @s run tp @s ~ ~-10000 ~

tag @s remove wind_charge_motion.inlaunch
tag @s add wind_charge_motion.not_in_launch
execute if score game_state windcharge_motion.power matches 0 run difficulty peaceful
attribute @s minecraft:generic.gravity base set 0.08
