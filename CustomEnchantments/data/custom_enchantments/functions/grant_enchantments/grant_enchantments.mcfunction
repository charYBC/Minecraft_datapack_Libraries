execute store result score @s custom_enchantments.random_prob run random value 0..100

$execute store result score target custom_enchantments.random_prob run data get storage custom_enchant:storage Temp.probabilities[$(index)]

$execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run data modify storage custom_enchant:storage Temp.current_enchantment set from storage custom_enchant:storage Temp.enchantments[$(index)]
$execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run data modify storage custom_enchant:storage Temp.current_range set from storage custom_enchant:storage Temp.levelranges[$(index)]
execute store result score adjust custom_enchantments.BookShelfAround run data get storage custom_enchant:storage Temp.current_range
scoreboard players operation adjust custom_enchantments.BookShelfAround *= @s custom_enchantments.BookShelfAround
scoreboard players operation adjust custom_enchantments.BookShelfAround /= max custom_enchantments.BookShelfAround
execute if score adjust custom_enchantments.BookShelfAround matches 0 run scoreboard players set adjust custom_enchantments.BookShelfAround 1
execute store result storage custom_enchant:storage Temp.current_range int 1 run scoreboard players get adjust custom_enchantments.BookShelfAround
execute if score adjust custom_enchantments.BookShelfAround matches 1 run data modify storage custom_enchant:storage Temp.current_level set value 1

execute unless score adjust custom_enchantments.BookShelfAround matches 1 if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run function custom_enchantments:grant_enchantments/random_enchant_level with storage custom_enchant:storage Temp
execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run function custom_enchantments:grant_enchantments/store_level with storage custom_enchant:storage Temp
execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run item modify entity @s player.cursor custom_enchantments:set_lore
execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run function custom_enchantments:grant_enchantments/setup_tag with storage custom_enchant:storage Temp
execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run item modify entity @s player.cursor custom_enchantments:set_data
execute if score @s custom_enchantments.random_prob <= target custom_enchantments.random_prob run item modify entity @s player.cursor custom_enchantments:set_glint
