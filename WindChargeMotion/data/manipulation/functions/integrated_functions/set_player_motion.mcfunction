
advancement revoke @s only manipulation:before_explosion
execute at @s positioned ~ ~1000000 ~ run function manipulation:do_before_explosion_setup

execute unless score @s windcharge_motion.playermotion.x matches 0 run function manipulation:integrated_functions/set_x

execute unless score @s windcharge_motion.playermotion.y matches 0 run function manipulation:integrated_functions/set_y

execute unless score @s windcharge_motion.playermotion.z matches 0 run function manipulation:integrated_functions/set_z


advancement revoke @s only manipulation:after_explosion
execute at @s positioned ~ ~1500000 ~ run function manipulation:do_after_explosion_setup



return 1