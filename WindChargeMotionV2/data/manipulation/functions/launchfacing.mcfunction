
kill @e[tag=windcharge_motion.direction,sort=nearest,limit=1]
scoreboard players operation templaunch windcharge_motion.launch_strength = @p windcharge_motion.launch_strength
summon slime ~ ~9999.8 ~0.57 {NoAI:true,Tags:["windcharge_motion.launcher","windcharge_motion","wind_charge_motion.inlaunch"],Team:manipulationentity,Silent:1b,PortalCooldown:1000,HasVisualFire:0b,PersistenceRequired:1b,Invulnerable:1b}
execute positioned ~ ~9999.8 ~0.57 run scoreboard players operation @e[tag=windcharge_motion.launcher,distance=..0.02] windcharge_motion.id = @s windcharge_motion.id


function manipulation:summon_wind_charges


tag @s add wind_charge_motion.inlaunch