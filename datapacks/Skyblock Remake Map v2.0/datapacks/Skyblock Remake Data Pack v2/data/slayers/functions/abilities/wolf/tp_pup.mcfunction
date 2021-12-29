#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
execute at @s as @e[tag=SvenPackmaster] if score @s PlayerID = @e[tag=SvenPup,distance=..2,limit=1] PlayerID run tp @e[tag=SvenPup,distance=..2,limit=1] @s
scoreboard players set @s S_SvenPupTimer 0