execute store result score @s random_prob run random value 0..100
$execute store result score target random_prob run data get storage custom_enchant:storage Temp.probabilities[$(index)]

$execute if score @s random_prob <= target random_prob run data modify storage custom_enchant:storage Temp.current_enchantment set from storage custom_enchant:storage Temp.enchantments[$(index)]
$execute if score @s random_prob <= target random_prob run data modify storage custom_enchant:storage Temp.current_range set from storage custom_enchant:storage Temp.levelranges[$(index)]
execute store result score adjust BookShelfAround run data get storage custom_enchant:storage Temp.current_range
scoreboard players operation adjust BookShelfAround *= @s BookShelfAround
scoreboard players operation adjust BookShelfAround /= max BookShelfAround
execute store result storage custom_enchant:storage Temp.current_range int 1 run scoreboard players get adjust BookShelfAround
execute if score @s random_prob <= target random_prob run function custom_enchantments:grant_enchantments/random_enchant_level with storage custom_enchant:storage Temp
execute if score @s random_prob <= target random_prob run function custom_enchantments:grant_enchantments/store_level with storage custom_enchant:storage Temp
execute if score @s random_prob <= target random_prob run item modify entity @s player.cursor custom_enchantments:set_lore
execute if score @s random_prob <= target random_prob run function custom_enchantments:grant_enchantments/setup_tag with storage custom_enchant:storage Temp
execute if score @s random_prob <= target random_prob run item modify entity @s player.cursor custom_enchantments:set_data