#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------FULL SET TAGS---------------#
tag @s remove Wear_Helmet
tag @s remove Wear_Chestplate
tag @s remove Wear_Leggings
tag @s remove Wear_Boots
tag @s remove Wear_FullSet

execute if data storage blue:item {SelectedItem:{tag:{Base:{Enchantments:[{telekinesis:{identifier:1b}}]}}}} run tag @s add Held_Telekinesis
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{Base:{Type:"HELMET"}}}]} run tag @s add Wear_Helmet
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{Base:{Type:"CHESTPLATE"}}}]} run tag @s add Wear_Chestplate
execute if data storage blue:item {Inventory:[{Slot:101b,tag:{Base:{Type:"LEGGINGS"}}}]} run tag @s add Wear_Leggings
execute if data storage blue:item {Inventory:[{Slot:100b,tag:{Base:{Type:"BOOTS"}}}]} run tag @s add Wear_Boots
tag @s[tag=Wear_Helmet,tag=Wear_Chestplate,tag=Wear_Leggings,tag=Wear_Boots] add Wear_FullSet

function armor:full_set_bonus/armor_tags_remove
execute if entity @s[tag=Wear_FullSet] run function armor:full_set_bonus/armor_tags_add
#------------------------------------------#