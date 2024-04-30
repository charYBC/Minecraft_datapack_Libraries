scoreboard objectives add custom_enchantments.XpLevel dummy
forceload add -1 -1 1 1
#scoreboard objectives add interact_grind_stone minecraft.custom:interact_with_grindstone
#scoreboard objectives add used_grind_stone minecraft.used:grindstone
#scoreboard objectives add enter_item_count dummy
scoreboard objectives add custom_enchantments dummy

scoreboard objectives add custom_enchantments.id dummy
scoreboard players operation global custom_enchantments.id = global custom_enchantments.id
scoreboard objectives add custom_enchantments.index dummy
scoreboard objectives add custom_enchantments.enchanting_table_distance dummy

scoreboard players operation maxindex custom_enchantments.index = maxindex custom_enchantments.index
scoreboard players operation success custom_enchantments.index = success custom_enchantments.index
#declare storage custom_enchant:storage
data modify storage custom_enchant:storage Temp set value {tool:"",enchantments:[],probabilities:[],current_enchantment:"",current_level:0,level:"",current_range:0,current_tag:{}}
data modify storage custom_enchant:storage EnchantData.index set value 0
scoreboard objectives add custom_enchantments.BookShelfAround dummy
scoreboard players set max custom_enchantments.BookShelfAround 15
