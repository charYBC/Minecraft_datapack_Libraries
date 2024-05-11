
tp 000003e8-0000-03e8-0000-03e8000003e8 ~ ~ ~
execute store result storage windcharge_motion:storage position.x double 0.0000001 run scoreboard players get @s windcharge_motion.setplayerxdirection
execute store result storage windcharge_motion:storage position.y double 0.0000001 run scoreboard players get @s windcharge_motion.setplayerydirection
execute store result storage windcharge_motion:storage position.z double 0.0000001 run scoreboard players get @s windcharge_motion.setplayerzdirection
execute at @s as 000003e8-0000-03e8-0000-03e8000003e8 run function manipulation:go_to_set_position with storage windcharge_motion:storage position
execute at @s facing entity 000003e8-0000-03e8-0000-03e8000003e8 feet anchored eyes positioned ^ ^ ^-0.01 positioned ~ ~ ~ run function manipulation:launchfacing
