summon minecraft:slime ~ ~ ~ {NoAI:true,Tags:["windcharge_motion.before","windcharge_motion"],DeathLootTable:"",HasVisualFire:0b,PersistenceRequired:1b,Health:100f,Attributes:[{Name:generic.max_health,Base:100}],Silent:1b}
summon arrow ~ ~0.82 ~ {Motion:[0.0,-10.0,0.0],Silent:1b,Tags:["windcharge_motion.timer"],PortalCooldown:1000}
execute positioned ~ ~0.82 ~ run data modify entity @e[tag=windcharge_motion.timer,limit=1,distance=..0.01] Owner set from entity @s UUID
execute positioned ~ ~ ~ run scoreboard players operation @e[tag=windcharge_motion.before,distance=..0.01] windcharge_motion.id = @s windcharge_motion.id
