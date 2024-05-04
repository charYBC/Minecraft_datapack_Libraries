scoreboard players set @s custom_enchantments -1



$execute if items entity @s player.crafting.1 $(tool) run scoreboard players set @s custom_enchantments 1
$execute if items entity @s player.crafting.2 $(tool) run scoreboard players set @s custom_enchantments 2
$execute if items entity @s player.crafting.3 $(tool) run scoreboard players set @s custom_enchantments 3
$execute if items entity @s player.crafting.0 $(tool) run scoreboard players set @s custom_enchantments 0
execute unless score @s custom_enchantments matches -1 store result storage custom_enchant:storage EnchantData.weapon_slot int 1 run scoreboard players get @s custom_enchantments

execute unless score @s custom_enchantments matches -1 run function custom_enchantments:start_enchant_loop
