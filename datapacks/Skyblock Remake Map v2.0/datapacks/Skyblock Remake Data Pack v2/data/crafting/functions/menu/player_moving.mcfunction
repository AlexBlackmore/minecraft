#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute store result score @p PlayerPosX run data get entity @p Pos[0] 10
execute store result score @p PlayerPosY run data get entity @p Pos[1] 10
execute store result score @p PlayerPosZ run data get entity @p Pos[2] 10
execute as @p[distance=..6] store result score @s NewRot run data get entity @s Rotation[0] 1000000
execute unless score @p OldRot = @p NewRot run function crafting:menu/save_items
execute unless score @p PlayerPosXOld = @p PlayerPosX run function crafting:menu/save_items
execute unless score @p PlayerPosYOld = @p PlayerPosY run function crafting:menu/save_items
execute unless score @p PlayerPosZOld = @p PlayerPosZ run function crafting:menu/save_items
execute as @p[distance=..6] run scoreboard players operation @s OldRot = @s NewRot
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosXOld = @s PlayerPosX
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosYOld = @s PlayerPosY
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosZOld = @s PlayerPosZ
#------------------------------------------#