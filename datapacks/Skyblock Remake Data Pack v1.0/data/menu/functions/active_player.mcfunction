#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
execute at @s if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
execute at @s if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:5}
#--------------MOVE MINECART---------------#
execute if entity @s[tag=!MoveUpdate] at @s as @e[tag=MenuMove] if score @s PlayerID = @p PlayerID run tp @s ~ ~0.5 ~
execute if entity @s[tag=MoveUpdate] at @s rotated ~ 0 as @e[tag=MenuMove] if score @s PlayerID = @p PlayerID run function menu:menu_distance
#------------------------------------------#