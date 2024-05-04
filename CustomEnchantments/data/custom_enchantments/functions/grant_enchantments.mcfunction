
$execute if items entity @s container.0 minecraft:enchanted_book[minecraft:custom_data~{hascustomenchant:1}] store success score success custom_enchantments run data get entity @s Items[{Slot:0b}].components."minecraft:custom_data".custom_enchantments[].$(temp_ench)


function custom_enchantments:get_temp_level with storage custom_enchant:storage EnchantData
function custom_enchantments:get_original_level with storage custom_enchant:storage EnchantData
function custom_enchantments:get_temp_symbol with storage custom_enchant:storage EnchantData
function custom_enchantments:get_original_symbol with storage custom_enchant:storage EnchantData

function custom_enchantments:modify_enchant with storage custom_enchant:storage EnchantData
