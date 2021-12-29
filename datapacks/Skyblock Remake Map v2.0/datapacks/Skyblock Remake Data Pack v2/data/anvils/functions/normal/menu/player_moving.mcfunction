#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute as @p[distance=..6] store result score @s PlayerPosX run data get entity @s Pos[0] 10
execute as @p[distance=..6] store result score @s PlayerPosY run data get entity @s Pos[1] 10
execute as @p[distance=..6] store result score @s PlayerPosZ run data get entity @s Pos[2] 10
execute as @p[distance=..6] store result score @s NewRot run data get entity @s Rotation[0] 1000000
execute unless score @p[distance=..6] OldRot = @p[distance=..6] NewRot run function anvils:normal/menu/return_item/player_items
execute unless score @p[distance=..6] PlayerPosXOld = @p[distance=..6] PlayerPosX run function anvils:normal/menu/return_item/player_items
execute unless score @p[distance=..6] PlayerPosYOld = @p[distance=..6] PlayerPosY run function anvils:normal/menu/return_item/player_items
execute unless score @p[distance=..6] PlayerPosZOld = @p[distance=..6] PlayerPosZ run function anvils:normal/menu/return_item/player_items
execute as @p[distance=..6] run scoreboard players operation @s OldRot = @s NewRot
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosXOld = @s PlayerPosX
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosYOld = @s PlayerPosY
execute as @p[distance=..6] run scoreboard players operation @s PlayerPosZOld = @s PlayerPosZ
#------------------------------------------#