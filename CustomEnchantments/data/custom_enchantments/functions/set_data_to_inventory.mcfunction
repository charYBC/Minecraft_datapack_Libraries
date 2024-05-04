execute if score success custom_enchantments matches 1 run item modify entity @s container.0 custom_enchantments:remove_all_data
$item replace entity @p player.crafting.$(slot) with air
$item replace entity @p player.crafting.$(weapon_slot) from entity @s container.1