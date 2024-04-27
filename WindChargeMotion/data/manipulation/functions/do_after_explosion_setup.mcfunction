summon minecraft:slime ~ ~304.8 ~0.57 {NoAI:true,Tags:["windcharge_motion.timerlauncher","windcharge_motion"],DeathLootTable:"",HasVisualFire:0b,PersistenceRequired:1b,Health:100f,Attributes:[{Name:generic.max_health,Base:100}]}
summon minecraft:wind_charge ~ ~305 ~ {Motion:[0.0,0.0,10.0],Silent:1b,Tags:["windcharge_motion.timer"],PortalCooldown:1000,PersistenceRequired:1b}
execute positioned ~ ~305 ~ run data modify entity @e[tag=windcharge_motion.timer,limit=1,distance=..0.01] Owner set from entity @s UUID
execute positioned ~ ~304.8 ~0.57 run scoreboard players operation @e[tag=windcharge_motion.timerlauncher,distance=..0.1] windcharge_motion.id = @s windcharge_motion.id
