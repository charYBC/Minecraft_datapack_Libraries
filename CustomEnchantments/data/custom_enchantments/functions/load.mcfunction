scoreboard objectives add XpLevel dummy
forceload add -1 -1 1 1
#scoreboard objectives add interact_grind_stone minecraft.custom:interact_with_grindstone
#scoreboard objectives add used_grind_stone minecraft.used:grindstone
#scoreboard objectives add enter_item_count dummy
scoreboard objectives add random_prob dummy
scoreboard objectives add custom_enchantments_id dummy
scoreboard players operation global custom_enchantments_id = global custom_enchantments_id
scoreboard objectives add index dummy
scoreboard objectives add enchanting_table_distance dummy
scoreboard objectives add toolsloop dummy
scoreboard players operation maxindex index = maxindex index
scoreboard players operation success index = success index
#declare storage custom_enchant:storage
data modify storage custom_enchant:storage Temp set value {tool:"",enchantments:[],probabilities:[],current_enchantment:"",current_level:0,level:"",current_range:0,current_tag:{}}
data modify storage custom_enchant:storage EnchantData.index set value 0
scoreboard objectives add BookShelfAround dummy
scoreboard players set max BookShelfAround 15
