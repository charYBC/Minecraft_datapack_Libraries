team add manipulationentity
forceload add 0 0 0 0
team modify manipulationentity collisionRule never
team modify manipulationentity seeFriendlyInvisibles false
scoreboard objectives add windcharge_motion.launch_strength dummy

scoreboard objectives add windcharge_motion.setplayerxdirection dummy
scoreboard objectives add windcharge_motion.setplayerydirection dummy
scoreboard objectives add windcharge_motion.setplayerzdirection dummy
scoreboard objectives add windcharge_motion.power dummy
scoreboard objectives add windcharge_motion.explosion_resistance dummy

scoreboard objectives add windcharge_motion.id dummy
scoreboard objectives add windcharge_motion.x_facing dummy
scoreboard objectives add windcharge_motion.y_facing dummy

scoreboard objectives add windcharge_motion.playermotion.x dummy
scoreboard objectives add windcharge_motion.playermotion.y dummy
scoreboard objectives add windcharge_motion.playermotion.z dummy

scoreboard players operation global.id windcharge_motion.id = global.id windcharge_motion.id
kill 000003e8-0000-03e8-0000-03e8000003e8
summon marker 0 0 0 {UUID:[I;1000,1000,1000,1000]}
#declare storage windcharge_motion:storage
data modify storage windcharge_motion:storage position set value {"x":0d,"y":0d,"z":0d,"x_rotate":0d,"y_rotate":0d,"reduction":0d,"original":0d}