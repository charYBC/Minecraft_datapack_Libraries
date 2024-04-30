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

CustomEnchantments:

use this to initialize storage:    
data modify storage custom_enchant:storage EnchantData set value {index:0,tools:[],enchantments:[],probabilities:[],levels:[""," I"," II"," III"," IV"," V"," VI","  VII"," VIII"," IX"," X"],levelranges:[]} 

Add tools (a tool which could have custom enchant):    
data modify storage custom_enchant:storage EnchantData.tools append value "???(for example it could be diamond_sword)"

add enchantments for the tool:    
data modify storage custom_enchant:storage EnchantData.enchantments append value ["enchant1","enchant2","enchant3"...]

add probabilities of getting the enchantment(out of 100) for the corresponding enchantment:    
data modify storage custom_enchant:storage EnchantData.probabilities append value [??,??,??...]

add levelranges (max level of the enchantment, it needs to be smaller than 10 for now, you can add more items into the levels to have more levelranges):     
data modify storage custom_enchant:storage EnchantData.levelranges append value [??,??,??...]

you can modify them afterwards also by doing stuff like this     
data modify storage custom_enchant:storage EnchantData.enchantments[?][?] set value "???"    
or     
data modify storage custom_enchant:storage EnchantData.enchantments[?] append value "???"    


after the setup is ready, head into the enchanting table and enchant like you would normally after that pick the item up with your cursor and drop it back to your inventory you should get the enchantments added.  
the pack does not provided a way to actually add functionality to the enchantments, but it does add a tag (custom data) in the form of {enchantmentname:level}

the custom enchantments won't be removed through grindstone, instead put the both grindstone and the weapon into the player's crafting slot to remove custom enchantments which also gives you xp but a fixed amount
