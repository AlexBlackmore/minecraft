#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
execute if entity @s[tag=GoBack] run tp @s ~ ~ ~ facing entity @e[tag=RevenantHorror,distance=..20,sort=nearest,limit=1]
execute if entity @s[tag=GoBack] run tp @s ^ ^ ^0.8
execute if entity @s[tag=GoBack] if entity @e[tag=RevenantHorror,distance=..1.35,limit=1] run function slayers:abilities/zombie/heal
