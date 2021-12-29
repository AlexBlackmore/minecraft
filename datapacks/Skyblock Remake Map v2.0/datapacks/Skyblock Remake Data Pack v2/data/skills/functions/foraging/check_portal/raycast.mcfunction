#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------RAYCAST------------------#
scoreboard players remove $MaxRaycast Temp 1
execute positioned ~ ~1 ~ if entity @e[tag=TravelTo,distance=..4] run tag @s add PortalFound
execute if entity @e[tag=TravelTo,distance=..4] run tag @s add PortalFound
execute positioned ~ ~-1 ~ if entity @e[tag=TravelTo,distance=..4] run tag @s add PortalFound
execute unless entity @s[tag=PortalFound] if score $MaxRaycast Temp matches 1.. positioned ^ ^ ^0.5 run function skills:foraging/check_portal/raycast
#------------------------------------------#