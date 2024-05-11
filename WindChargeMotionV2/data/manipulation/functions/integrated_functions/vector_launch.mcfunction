advancement revoke @s only manipulation:before_explosion
execute at @s positioned ~ ~1000000 ~ run function manipulation:do_before_explosion_setup
execute store result storage windcharge_motion:storage position.x_rotate double 0.0001 run scoreboard players get @s windcharge_motion.x_facing
execute store result storage windcharge_motion:storage position.y_rotate double 0.0001 run scoreboard players get @s windcharge_motion.y_facing
scoreboard players set temp windcharge_motion.power 10000
scoreboard players operation temp windcharge_motion.power -= @s windcharge_motion.power
execute store result storage windcharge_motion:storage position.reduction double 0.0001 run scoreboard players get temp windcharge_motion.power

execute at @s run function manipulation:integrated_functions/launch_at_given_facing with storage windcharge_motion:storage position
advancement revoke @s only manipulation:after_explosion
execute at @s positioned ~ ~1500000 ~ run function manipulation:do_after_explosion_setup
return 1