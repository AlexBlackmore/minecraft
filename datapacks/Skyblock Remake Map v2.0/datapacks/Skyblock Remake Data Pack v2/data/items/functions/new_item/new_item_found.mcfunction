#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
scoreboard players remove @s InvItemUpdate 1
execute if entity @s[scores={InvItemUpdate=0}] at @s run function items:new_item/initialize_item
#------------------------------------------#