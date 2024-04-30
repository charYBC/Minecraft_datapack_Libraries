execute at @s run playsound block.grindstone.use block @p ~ ~ ~
execute at @s if items entity @s player.crafting.0 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.1 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.2 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.3 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s as @e[tag=copy_data,type=chest_minecart] if score @p custom_enchantments_id = @s custom_enchantments_id run function custom_enchantments:remove_glint
execute if items entity @s player.crafting.0 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.0 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.1 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.1 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.2 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.2 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.3 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.3 custom_enchantments:remove_all_data
