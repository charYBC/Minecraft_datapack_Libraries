
execute as @e[tag=windcharge_motion] if score @s windcharge_motion.id = @p windcharge_motion.id run function manipulation:kill_entity

execute at @s run tp @s ~ ~-10000 ~

tag @s remove wind_charge_motion.inlaunch
tag @s add wind_charge_motion.not_in_launch
execute if score game_state windcharge_motion.power matches 0 run difficulty peaceful
execute store result storage windcharge_motion:storage position.original double 0.00001 run scoreboard players get @s windcharge_motion.explosion_resistance
function manipulation:integrated_functions/reset_attribute with storage windcharge_motion:storage position