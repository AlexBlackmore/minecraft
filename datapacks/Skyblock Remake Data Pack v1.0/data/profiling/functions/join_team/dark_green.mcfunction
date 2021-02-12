#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------JOIN TEAM-----------------#
execute if score $DarkGreen TeamOccupied matches 1.. run function profiling:join_team/occupied
execute if score $DarkGreen TeamOccupied matches 0 run team join dark_green @s
execute if score $DarkGreen TeamOccupied matches 0 run function cheats:teleports/to_private
execute if score $DarkGreen TeamOccupied matches 0 run scoreboard players set $DarkGreen TeamOccupied 1
#------------------------------------------#