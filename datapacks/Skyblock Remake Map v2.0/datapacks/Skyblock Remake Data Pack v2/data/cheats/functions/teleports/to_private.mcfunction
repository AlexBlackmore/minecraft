#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------REMOVE MENU----------------#
execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute if entity @s[tag=End_DragScoreboard] run function public_islands:the_end/scoreboard/remove_stats

execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill

execute as @e[tag=EnderChestZealot] run function skyblock:kill
#---------------OBJECTIVES-----------------#
execute if entity @s[team=aqua] in skyblock:private_island/aqua run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=black] in skyblock:private_island/black run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=blue] in skyblock:private_island/blue run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_aqua] in skyblock:private_island/dark_aqua run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_blue] in skyblock:private_island/dark_blue run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_gray] in skyblock:private_island/dark_gray run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_green] in skyblock:private_island/dark_green run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_purple] in skyblock:private_island/dark_purple run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=dark_red] in skyblock:private_island/dark_red run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=gold] in skyblock:private_island/gold run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=gray] in skyblock:private_island/gray run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=green] in skyblock:private_island/green run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=light_purple] in skyblock:private_island/light_purple run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=red] in skyblock:private_island/red run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=white] in skyblock:private_island/white run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=yellow] in skyblock:private_island/yellow run tp @s 7.5 100 7.5 0 0
execute if entity @s[team=] in skyblock:main_island run tp @s -2 70 -84 -180 0

execute if entity @s[team=!] at @s run spawnpoint @s 8 100 8
execute if entity @s[team=] at @s run spawnpoint @s -2 70 -84
#--------------RESPAWN MENU----------------#
scoreboard players set @s[tag=Menu,tag=!MenuSelect] MenuSpawnDelay 5
#----------------MESSAGES------------------#
scoreboard players set @s SubLocation -1
function profiling:set_location/your_island
gamemode survival @s[team=!,gamemode=adventure]
tellraw @s[team=!] ["",{"text":"Teleporting to island...","color":"yellow","bold":false}]
