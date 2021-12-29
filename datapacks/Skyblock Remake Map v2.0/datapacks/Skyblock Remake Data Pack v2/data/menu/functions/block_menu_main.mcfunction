#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
execute positioned ~ ~1.62 ~ run function menu:scan_ahead
execute if entity @s[tag=OpenCrafting,tag=!BlockCrafting] run function crafting:menu/block/open
execute if entity @s[tag=!OpenCrafting,tag=BlockCrafting] run function crafting:menu/block/close
execute if entity @s[tag=OpenEnchanting,tag=!BlockEnchanting] run function enchanting:enchanting_table/block/open
execute if entity @s[tag=!OpenEnchanting,tag=BlockEnchanting] run function enchanting:enchanting_table/block/close
execute if entity @s[tag=OpenAnvil,tag=!BlockAnvil] run function anvils:normal/menu/block/open
execute if entity @s[tag=!OpenAnvil,tag=BlockAnvil] run function anvils:normal/menu/block/close
tag @s remove OpenCrafting
tag @s remove OpenEnchanting
tag @s remove OpenAnvil
#------------------------------------------#