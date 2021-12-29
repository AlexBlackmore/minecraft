#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
tag @s[tag=Menu] add Cheats_Teleported
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute in skyblock:the_barn run tp @s 113.5 71 -207.5 -135 0

execute as @e[tag=EnderChestZealot] run function skyblock:kill

tellraw @s ["",{"text":"Teleporting to The Barn...","color":"yellow","bold":false}]
scoreboard players set @s[tag=Menu] MenuSpawnDelay 5
function profiling:set_location/the_barn
gamemode adventure @s[team=!,gamemode=survival]
