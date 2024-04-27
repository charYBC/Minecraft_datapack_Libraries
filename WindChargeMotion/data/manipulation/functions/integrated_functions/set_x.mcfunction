scoreboard players set @s windcharge_motion.setplayerydirection 0
scoreboard players operation @s windcharge_motion.setplayerxdirection = @s windcharge_motion.playermotion.x
scoreboard players operation @s windcharge_motion.setplayerzdirection = max windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch
scoreboard players operation @s windcharge_motion.setplayerzdirection = min windcharge_motion.setplayerxdirection
function manipulation:directional_set_launch