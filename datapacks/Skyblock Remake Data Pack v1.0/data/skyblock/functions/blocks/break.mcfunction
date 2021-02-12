#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if block ~ ~ ~ #skyblock:block_menu if entity @s[scores={SubLocation=-1}] run function skyblock:blocks/breakselect
execute if block ~ ~ ~ #skyblock:allowed if entity @s[distance=..5,scores={SubLocation=-1}] positioned ^ ^ ^0.2 run function skyblock:blocks/break
#------------------------------------------#