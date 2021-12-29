#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------PARTICLES-----------------#
scoreboard players remove @s Raycast 1
execute if entity @s[tag=Stealing] run particle minecraft:heart ~ ~ ~ 0 0 0 0.5 1 force
execute if entity @s[tag=!Stealing] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.5 1 force
execute unless score @s Raycast matches ..0 positioned ^ ^ ^0.5 if entity @a[distance=..2.5] run tag @s add Stealing 
execute unless score @s Raycast matches ..0 positioned ^ ^ ^0.5 unless entity @a[distance=..2.5] run function slayers:particles/raycast
execute unless score @s Raycast matches ..0 positioned ^ ^ ^0.5 if entity @a[distance=..2.5] rotated ~180 ~ run function slayers:particles/raycast
