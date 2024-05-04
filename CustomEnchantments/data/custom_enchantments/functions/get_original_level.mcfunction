$data modify storage custom_enchant:storage EnchantData.temp_original_level set from entity @s Items[1].components."minecraft:custom_data".custom_enchantments[].$(temp_ench)
$execute store result score level_data custom_enchantments run data get entity @s Items[1].components."minecraft:custom_data".custom_enchantments[].$(temp_ench)
execute store result storage custom_enchant:storage EnchantData.temp_original_level int 1 run scoreboard players get level_data custom_enchantments
scoreboard players add level_data custom_enchantments 1
execute store result storage custom_enchant:storage EnchantData.temp_original_level_plus_one int 1 run scoreboard players get level_data custom_enchantments
$execute store result score level_max custom_enchantments run data get storage custom_enchant:storage Temp.levelranges[$(index)]
