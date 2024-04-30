execute at @s run playsound block.grindstone.use block @p ~ ~ ~
execute at @s if items entity @s player.crafting.0 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.1 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.2 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute at @s if items entity @s player.crafting.3 *[minecraft:custom_data~{hascustomenchant:1}] run summon experience_orb ~ ~ ~ {Value:3}
execute if items entity @s player.crafting.0 *[minecraft:enchantments={}] if items entity @s player.crafting.0 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.0 custom_enchantments:remove_glint
execute if items entity @s player.crafting.1 *[minecraft:enchantments={}] if items entity @s player.crafting.1 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.1 custom_enchantments:remove_glint
execute if items entity @s player.crafting.2 *[minecraft:enchantments={}] if items entity @s player.crafting.2 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.2 custom_enchantments:remove_glint
execute if items entity @s player.crafting.3 *[minecraft:enchantments={}] if items entity @s player.crafting.3 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.3 custom_enchantments:remove_glint
execute if items entity @s player.crafting.0 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.0 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.1 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.1 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.2 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.2 custom_enchantments:remove_all_data
execute if items entity @s player.crafting.3 *[minecraft:custom_data~{hascustomenchant:1}] run item modify entity @s player.crafting.3 custom_enchantments:remove_all_data
