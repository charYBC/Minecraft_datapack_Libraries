execute if score @s windcharge_motion.power matches 0 run return 1
summon minecraft:breeze_wind_charge ~ ~10000 ~ {Team:manipulationentity,Tags:["windcharge_motion.explode","wind_charge_motion.inlaunch"],Silent:1b,Motion:[0.0,0.0,10.0],PortalCooldown:1000}
scoreboard players remove @s windcharge_motion.power 1
function manipulation:summon_wind_charges
