advancement revoke @s only manipulation:before_explosion
execute at @s positioned ~ ~1000000 ~ run function manipulation:do_before_explosion_setup

scoreboard players set temp windcharge_motion.power 10000
scoreboard players operation temp windcharge_motion.power -= @s windcharge_motion.power
execute store result storage windcharge_motion:storage position.reduction double 0.0001 run scoreboard players get temp windcharge_motion.power

function manipulation:integrated_functions/set_attribute with storage windcharge_motion:storage position
execute at @s rotated as @s anchored eyes positioned ^ ^ ^-0.01 run function manipulation:launchfacing

advancement revoke @s only manipulation:after_explosion
execute at @s positioned ~ ~1500000 ~ run function manipulation:do_after_explosion_setup
return 1