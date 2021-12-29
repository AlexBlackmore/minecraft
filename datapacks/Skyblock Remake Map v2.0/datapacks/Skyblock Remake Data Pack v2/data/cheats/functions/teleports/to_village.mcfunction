#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------REMOVE MENU----------------#
tag @s[scores={Location=1..},tag=Menu] add Cheats_Teleported
execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill

execute as @e[tag=EnderChestZealot] run function skyblock:kill
#---------------OBJECTIVES-----------------#
execute in skyblock:main_island run tp @s -2.5 70 -84.5 180 0
#--------------RESPAWN MENU----------------#
scoreboard players set @s[tag=Menu] MenuSpawnDelay 5
#----------------MESSAGES------------------#
scoreboard players set @s SubLocation 1
function profiling:set_location/village
gamemode adventure @s[team=!,gamemode=survival]
tellraw @s[team=!] ["",{"text":"Teleporting to hub...","color":"yellow","bold":false}]
scoreboard players reset @s AdminBox
