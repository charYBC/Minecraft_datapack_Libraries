advancement revoke @s only manipulation:before_explosion
execute at @s positioned ~ ~1000000 ~ run function manipulation:do_before_explosion_setup

attribute @s minecraft:generic.gravity base set 1

scoreboard players operation tempx windcharge_motion.power = @s windcharge_motion.playermotion.x
scoreboard players operation tempy windcharge_motion.power = @s windcharge_motion.playermotion.y
scoreboard players operation tempz windcharge_motion.power = @s windcharge_motion.playermotion.z

scoreboard players operation tempx windcharge_motion.power *= @s windcharge_motion.playermotion.x
scoreboard players operation tempy windcharge_motion.power *= @s windcharge_motion.playermotion.y
scoreboard players operation tempz windcharge_motion.power *= @s windcharge_motion.playermotion.z

scoreboard players set temp windcharge_motion.power 300000000
scoreboard players set temp_complement windcharge_motion.power 0
scoreboard players operation temp_complement windcharge_motion.power += tempx windcharge_motion.power
scoreboard players operation temp_complement windcharge_motion.power += tempy windcharge_motion.power
scoreboard players operation temp_complement windcharge_motion.power += tempz windcharge_motion.power

scoreboard players operation temp windcharge_motion.power -= temp_complement windcharge_motion.power
execute store result storage windcharge_motion:storage position.reduction double 0.000000003333333 run scoreboard players get temp windcharge_motion.power

scoreboard players operation @s windcharge_motion.setplayerxdirection = @s windcharge_motion.playermotion.x
scoreboard players operation @s windcharge_motion.setplayerydirection = @s windcharge_motion.playermotion.y
scoreboard players operation @s windcharge_motion.setplayerzdirection = @s windcharge_motion.playermotion.z

function manipulation:directional_set_launch

advancement revoke @s only manipulation:after_explosion
execute at @s positioned ~ ~1500000 ~ run function manipulation:do_after_explosion_setup
return 1