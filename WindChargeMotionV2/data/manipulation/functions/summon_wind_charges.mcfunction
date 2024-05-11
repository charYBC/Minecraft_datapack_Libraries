execute if score templaunch windcharge_motion.launch_strength matches 0 run return 1
summon minecraft:breeze_wind_charge ~ ~10000 ~ {Team:manipulationentity,Tags:["windcharge_motion.explode","wind_charge_motion.inlaunch"],Silent:1b,Motion:[0.0,0.0,10.0],PortalCooldown:1000}
scoreboard players remove templaunch windcharge_motion.launch_strength 1
function manipulation:summon_wind_charges
