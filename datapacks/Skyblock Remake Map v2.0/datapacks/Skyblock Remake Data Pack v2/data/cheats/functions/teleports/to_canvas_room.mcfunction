#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
scoreboard players set @s[tag=Menu] MenuSpawnDelay 5

execute as @e[tag=EnderChestZealot] run function skyblock:kill

execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
function profiling:set_location/canvas_room
scoreboard players set @s SubLocation 3
tellraw @s [{"text":"Warped to Canvas Room!","color":"light_purple"}]
execute in skyblock:main_island run tp @s -11 19 -22 -180 0
execute as @e[tag=NPCMarco2,tag=!NPCMain] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=FlowerHouseWarp] run data merge entity @s {CustomNameVisible:1b}
effect give @s minecraft:invisibility 1000000 10 true
gamemode adventure @s[team=!,gamemode=survival]
