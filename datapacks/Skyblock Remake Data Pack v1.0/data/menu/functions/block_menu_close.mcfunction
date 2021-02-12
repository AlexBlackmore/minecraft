#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
execute if entity @s[tag=BlockCrafting] run function crafting:menu/block/close
execute if entity @s[tag=BlockEnchanting] run function enchanting:enchanting_table/block/close
execute if entity @s[tag=BlockAnvil] run function enchanting:enchanting_table/block/close
tag @s remove OpenCrafting
tag @s remove OpenEnchanting
tag @s remove OpenAnvil
#------------------------------------------#