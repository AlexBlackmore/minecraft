#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FROST WALKER---------------#
execute if entity @s[tag=Held_FrostWalker1] run function enchanting:enchants/frost_walker/level_1
execute unless entity @s[tag=Held_FrostWalker1] run function enchanting:enchants/frost_walker/level_2
#------------------------------------------#