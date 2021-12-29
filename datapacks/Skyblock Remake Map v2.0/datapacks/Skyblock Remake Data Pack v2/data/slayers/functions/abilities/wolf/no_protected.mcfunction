#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
tag @s remove SvenProtected
execute as @e[tag=SlayerTimeDisplay,sort=nearest,limit=1] at @s run function slayers:timer/display/update
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.35