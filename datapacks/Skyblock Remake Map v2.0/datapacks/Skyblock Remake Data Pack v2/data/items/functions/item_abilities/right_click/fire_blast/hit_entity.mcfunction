#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------SETUP------------------#
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..3] ApplyDamage = @s I_AbilDmgStore
kill @s
#------------------------------------------#