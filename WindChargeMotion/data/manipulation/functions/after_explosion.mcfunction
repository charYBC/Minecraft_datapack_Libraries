
execute as @e[tag=windcharge_motion] if score @s windcharge_motion.id = @p windcharge_motion.id run function manipulation:kill_entity

execute at @s run tp @s ~ ~-10000 ~

tag @s remove inlaunch