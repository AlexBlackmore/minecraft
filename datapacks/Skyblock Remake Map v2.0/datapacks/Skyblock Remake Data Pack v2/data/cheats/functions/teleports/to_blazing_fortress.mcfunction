#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
tag @s[tag=Menu] add Cheats_Teleported
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
scoreboard players set @s[tag=Menu] MenuSpawnDelay 5

execute as @e[tag=EnderChestZealot] run function skyblock:kill

execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning

tellraw @s ["",{"text":"Teleporting to Blazing Fortress...","color":"yellow","bold":false}]
execute in skyblock:blazing_fortress run tp @s -310.0 83 -380.5 -180 0
function profiling:set_location/blazing_fortress
gamemode adventure @s[team=!,gamemode=survival]
