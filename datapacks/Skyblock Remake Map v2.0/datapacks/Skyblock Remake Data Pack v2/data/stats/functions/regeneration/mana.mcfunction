#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------NATURAL REGEN---------------#
scoreboard players operation @s PlayerMana += @s P_ManaRegen
execute if score @s PlayerMana > @s P_ManaPool run scoreboard players operation @s PlayerMana = @s P_ManaPool
#------------------------------------------#