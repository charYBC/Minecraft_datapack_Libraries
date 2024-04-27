scoreboard players operation @s windcharge_motion.id = global.id windcharge_motion.id
scoreboard players add @s windcharge_motion.id 1
scoreboard players add global.id windcharge_motion.id 1
scoreboard players set @s windcharge_motion.launch_strength 15
scoreboard players set @s windcharge_motion.setplayerxdirection 0
scoreboard players set @s windcharge_motion.setplayerxdirection 0
scoreboard players set @s windcharge_motion.setplayerxdirection 0

advancement grant @s only manipulation:before_explosion
advancement grant @s only manipulation:after_explosion
team join manipulationentity
