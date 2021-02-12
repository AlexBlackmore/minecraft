#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ITEM ABILITIES--------------#
scoreboard players add $Raycast Temp 1
execute at @s run tp @s ^ ^ ^0.5
execute at @s if block ~ ~ ~ #skyblock:allowed if block ~ ~1 ~ #skyblock:allowed positioned ~ ~1.62 ~ if block ^ ^ ^1 #skyblock:allowed if score $Raycast Temp matches ..15 run function items:item_abilities/right_click/instant_transmission/teleport_loop
execute if score $Raycast Temp matches ..8 run tag @s remove Ability_FreeSpace
#------------------------------------------#​