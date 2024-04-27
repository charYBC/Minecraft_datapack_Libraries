WindChargeMotion: 
No need for resource pack, only edit the player you want!!!!! very clean has delicate control, but lacks complex math. How to use: 

based on your computer's performance, use this to set the maximum strength output:
scoreboard players set @s windcharge_motion.launch_strength ?? 

use these to change the delicacy:
scoreboard players set max windcharge_motion.setplayerxdirection 40000       
scoreboard players set min windcharge_motion.setplayerxdirection -40000      



use these to set the motion: (remember to run as player)       
scoreboard players set @s windcharge_motion.playermotion.x ??        
scoreboard players set @s windcharge_motion.playermotion.y ??      
scoreboard players set @s windcharge_motion.playermotion.x ??      
function manipulation:integrated_functions/set_player_motion

when values are set to the max there is only still (2**0.5)/2 of the full force

