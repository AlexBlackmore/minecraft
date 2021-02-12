#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute at @s as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:reset_menu
advancement revoke @s only menu:open_menu
#------------------------------------------#