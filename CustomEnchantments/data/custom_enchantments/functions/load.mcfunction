scoreboard objectives add XpLevel dummy
scoreboard objectives add random_prob dummy
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