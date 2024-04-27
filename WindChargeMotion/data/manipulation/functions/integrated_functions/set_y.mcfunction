scoreboard players set @s windcharge_motion.setplayerzdirection 0
scoreboard players operation @s windcharge_motion.setplayerydirection = @s windcharge_motion.playermotion.y
scoreboard players operation @s windcharge_motion.setplayerxdirection = max windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch
scoreboard players operation @s windcharge_motion.setplayerxdirection = min windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch
