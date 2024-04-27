team add manipulationentity
team modify manipulationentity collisionRule never
team modify manipulationentity seeFriendlyInvisibles false
scoreboard objectives add windcharge_motion.power dummy
scoreboard objectives add windcharge_motion.launch_strength dummy

scoreboard objectives add windcharge_motion.setplayerxdirection dummy
scoreboard objectives add windcharge_motion.setplayerydirection dummy
scoreboard objectives add windcharge_motion.setplayerzdirection dummy

scoreboard objectives add windcharge_motion.id dummy


scoreboard objectives add windcharge_motion.playermotion.x dummy
scoreboard objectives add windcharge_motion.playermotion.y dummy
scoreboard objectives add windcharge_motion.playermotion.z dummy
scoreboard players set max windcharge_motion.setplayerxdirection 40000

scoreboard players set min windcharge_motion.setplayerxdirection -40000

scoreboard players operation global.id windcharge_motion.id = global.id windcharge_motion.id
execute unless entity 000003e8-0000-03e8-0000-03e8000003e8 run summon marker ~ ~ ~ {UUID:[I;1000,1000,1000,1000]}
#declare storage windcharge_motion:storage
data modify storage windcharge_motion:storage position set value {"x":0d,"y":0d,"z":0d}