tag @s remove wind_charge_motion.not_in_launch
execute store result score game_state windcharge_motion.power run difficulty
execute if score game_state windcharge_motion.power matches 0 run difficulty easy

summon minecraft:bat ~ ~ ~ {NoAI:true,Tags:["windcharge_motion.before","windcharge_motion"],DeathLootTable:"",HasVisualFire:0b,PersistenceRequired:1b,Health:100000f,Attributes:[{Name:generic.max_health,Base:100000}],Silent:1b,HurtTime:0,DeathTime:0}
summon arrow ~ ~1.19999999 ~ {Motion:[0.0,-10.0,0.0],Silent:1b,Tags:["windcharge_motion.timer"],PortalCooldown:1000}
execute positioned ~ ~1.19999999 ~ run data modify entity @e[tag=windcharge_motion.timer,limit=1,distance=..0.01] Owner set from entity @s UUID
execute positioned ~ ~ ~ run scoreboard players operation @e[tag=windcharge_motion.before,distance=..0.01] windcharge_motion.id = @s windcharge_motion.id
