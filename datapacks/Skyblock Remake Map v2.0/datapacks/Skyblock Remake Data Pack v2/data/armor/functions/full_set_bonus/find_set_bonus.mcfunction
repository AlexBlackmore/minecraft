#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE ABSORPTION-------------#
execute if entity @s[tag=Wear_Helmet] unless data entity @s {Inventory:[{Slot:103b,tag:{Base:{Type:"HELMET"}}}]} run tag @s add Was_Wear_Helmet
execute if entity @s[tag=Wear_Chestplate] unless data entity @s {Inventory:[{Slot:102b,tag:{Base:{Type:"CHESTPLATE"}}}]} run tag @s add Was_Wear_Chestplate
execute if entity @s[tag=Wear_Leggings] unless data entity @s {Inventory:[{Slot:101b,tag:{Base:{Type:"LEGGINGS"}}}]} run tag @s add Was_Wear_Leggings
execute if entity @s[tag=Wear_Boots] unless data entity @s {Inventory:[{Slot:100b,tag:{Base:{Type:"BOOTS"}}}]} run tag @s add Was_Wear_Boots
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
#-----------------TUXEDOS------------------#
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Jacket\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Pants\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Oxfords\",\"color\":\"gold\",\"italic\":false}]"}}}]} run tag @s add SetBonus_Dashing_Elegant
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Jacket\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Pants\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Oxfords\",\"color\":\"gold\",\"italic\":false}]"}}}]} run tag @s add SetBonus_Dashing_Fancy
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Jacket\",\"color\":\"dark_purple\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Pants\",\"color\":\"dark_purple\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Oxfords\",\"color\":\"dark_purple\",\"italic\":false}]"}}}]} run tag @s add SetBonus_Dashing_Cheap
#------------------------------------------#

#----------CHECK FOR ARMOR OFF-------------#
execute if entity @s[tag=!SetBonus_Witherborn] run function armor:full_set_bonus/abilities/witherborn/kill
#------------------------------------------#