
execute store result score level_new custom_enchantments run data get storage custom_enchant:storage EnchantData.temp_level 1
$execute store success score level_success custom_enchantments run data get entity @s Items[{Slot:1b}].components."minecraft:custom_data".custom_enchantments[].$(temp_ench)
$execute store result score level_old custom_enchantments run data get entity @s Items[{Slot:1b}].components."minecraft:custom_data".custom_enchantments[].$(temp_ench)
$execute if score level_success custom_enchantments matches 1 run data remove entity @s Items[{Slot:1b}].components."minecraft:lore"[$(index)]



$execute if score level_success custom_enchantments matches 1 if score level_new custom_enchantments >= level_old custom_enchantments if score level_new custom_enchantments <= level_max custom_enchantments if score success custom_enchantments matches 1 run data modify entity @s Items[{Slot:1b}].components."minecraft:custom_data".custom_enchantments[{$(temp_ench):$(temp_original_level)}] set value {$(temp_ench):$(temp_level)}
$execute if score level_success custom_enchantments matches 1 if score level_new custom_enchantments = level_old custom_enchantments if score level_data custom_enchantments <= level_max custom_enchantments if score success custom_enchantments matches 1 run data modify entity @s Items[{Slot:1b}].components."minecraft:custom_data".custom_enchantments[{$(temp_ench):$(temp_original_level)}] set value {$(temp_ench):$(temp_original_level_plus_one)}
$execute if score level_success custom_enchantments matches 0 run data modify entity @s Items[{Slot:1b}].components."minecraft:custom_data".custom_enchantments append value {$(temp_ench):$(temp_level)}
$execute if score level_new custom_enchantments > level_old custom_enchantments if score level_new custom_enchantments <= level_max custom_enchantments run data modify entity @s Items[{Slot:1b}].components."minecraft:lore" insert $(index) value '{"color":"gray","italic":false,"text":"$(temp_ench)$(temp_level_symbol)"}'
$execute if score level_new custom_enchantments < level_old custom_enchantments run data modify entity @s Items[{Slot:1b}].components."minecraft:lore" insert $(index) value '{"color":"gray","italic":false,"text":"$(temp_ench)$(temp_level_original_symbol)"}'
$execute if score level_new custom_enchantments = level_old custom_enchantments if score level_data custom_enchantments <= level_max custom_enchantments run data modify entity @s Items[{Slot:1b}].components."minecraft:lore" insert $(index) value '{"color":"gray","italic":false,"text":"$(temp_ench)$(temp_plus_one_symbol)"}'
$execute if score level_new custom_enchantments = level_old custom_enchantments if score level_data custom_enchantments > level_max custom_enchantments run data modify entity @s Items[{Slot:1b}].components."minecraft:lore" insert $(index) value '{"color":"gray","italic":false,"text":"$(temp_ench)$(temp_level_symbol)"}'

data modify entity @s Items[{Slot:1b}].components."minecraft:enchantment_glint_override" set value true
data modify entity @s Items[{Slot:1b}].components."minecraft:custom_data".hascustomenchant set value 1
playsound block.anvil.use block @p ~ ~ ~