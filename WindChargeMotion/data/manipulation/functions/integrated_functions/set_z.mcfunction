scoreboard players set @s windcharge_motion.setplayerxdirection 0
scoreboard players operation @s windcharge_motion.setplayerzdirection = @s windcharge_motion.playermotion.z
scoreboard players operation @s windcharge_motion.setplayerydirection = max windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch
scoreboard players operation @s windcharge_motion.setplayerydirection = min windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch