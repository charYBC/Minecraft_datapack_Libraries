scoreboard objectives add custom_enchantments.XpLevel dummy
forceload add -1 -1 1 1
#scoreboard objectives add interact_grind_stone minecraft.custom:interact_with_grindstone
#scoreboard objectives add used_grind_stone minecraft.used:grindstone
#scoreboard objectives add enter_item_count dummy
scoreboard objectives add custom_enchantments dummy

scoreboard objectives add custom_enchantments.random_prob dummy
scoreboard objectives add custom_enchantments.index dummy
scoreboard objectives add custom_enchantments.enchanting_table_distance dummy
kill 0000007b-0000-007b-0000-007b0000007b
summon chest_minecart 0 15000000 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Type:"oak",Tags:["copy_data"],UUID:[I;123,123,123,123]}

scoreboard players operation maxindex custom_enchantments.index = maxindex custom_enchantments.index
scoreboard players operation success custom_enchantments.index = success custom_enchantments.index
#declare storage custom_enchant:storage
data modify storage custom_enchant:storage Temp set value {tool:"",enchantments:[],probabilities:[],current_enchantment:"",current_level:0,level:"",current_range:0,current_tag:{}}
data modify storage custom_enchant:storage EnchantData.index set value 0
scoreboard objectives add custom_enchantments.BookShelfAround dummy
scoreboard players set max custom_enchantments.BookShelfAround 15
