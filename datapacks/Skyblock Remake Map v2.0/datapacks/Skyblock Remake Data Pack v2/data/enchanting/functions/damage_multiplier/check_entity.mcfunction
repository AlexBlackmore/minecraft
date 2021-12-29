#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DMG MULTIPLIER--------------#
execute if entity @s[type=#enchanting:checks/is_arachnid] run function enchanting:damage_multiplier/bane_of_arthropods
execute if entity @s[type=#enchanting:checks/is_cube] run function enchanting:damage_multiplier/cubism
execute if entity @s[type=#enchanting:checks/is_ender] run function enchanting:damage_multiplier/ender_slayer
execute if entity @s[type=#enchanting:checks/is_large_sea] run function enchanting:damage_multiplier/impaling
execute if entity @s[type=#enchanting:checks/is_undead] run function enchanting:damage_multiplier/smite
#------------------------------------------#