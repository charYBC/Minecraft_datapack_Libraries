tag @s remove after_enchant
tag @s remove can_enchant

scoreboard players set @s index 0
data modify storage custom_enchant:storage EnchantData.index set value 0
function custom_enchantments:check_type/check_type_recursive
advancement revoke @s only custom_enchantments:enchanted
