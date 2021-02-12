#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
replaceitem entity @s container.15 air
execute if data entity @s Items[{Slot:2b}] run function crafting:menu/return_item/2
execute if data entity @s Items[{Slot:3b}] run function crafting:menu/return_item/3
execute if data entity @s Items[{Slot:4b}] run function crafting:menu/return_item/4
execute if data entity @s Items[{Slot:11b}] run function crafting:menu/return_item/11
execute if data entity @s Items[{Slot:12b}] run function crafting:menu/return_item/12
execute if data entity @s Items[{Slot:13b}] run function crafting:menu/return_item/13
execute if data entity @s Items[{Slot:20b}] run function crafting:menu/return_item/20
execute if data entity @s Items[{Slot:21b}] run function crafting:menu/return_item/21
execute if data entity @s Items[{Slot:22b}] run function crafting:menu/return_item/22
#------------------------------------------#