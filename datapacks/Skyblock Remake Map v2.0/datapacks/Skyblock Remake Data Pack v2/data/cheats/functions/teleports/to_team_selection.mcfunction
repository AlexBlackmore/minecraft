#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ADMINS-------------------#
execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
execute in minecraft:overworld run tp @s 106 69 -58 -90 0
execute in minecraft:overworld run tp @s 106 69 -58 -90 0

execute as @e[tag=EnderChestZealot] run function skyblock:kill
gamemode adventure @s
scoreboard players reset @s ChangeTeam
#---------------LEAVE TEAM-----------------#
execute if entity @s[team=aqua] run scoreboard players set $Aqua TeamOccupied 0
execute if entity @s[team=black] run scoreboard players set $Black TeamOccupied 0
execute if entity @s[team=blue] run scoreboard players set $Blue TeamOccupied 0
execute if entity @s[team=dark_aqua] run scoreboard players set $DarkAqua TeamOccupied 0
execute if entity @s[team=dark_blue] run scoreboard players set $DarkBlue TeamOccupied 0
execute if entity @s[team=dark_gray] run scoreboard players set $DarkGray TeamOccupied 0
execute if entity @s[team=dark_green] run scoreboard players set $DarkGreen TeamOccupied 0
execute if entity @s[team=dark_purple] run scoreboard players set $DarkPurple TeamOccupied 0
execute if entity @s[team=dark_red] run scoreboard players set $DarkRed TeamOccupied 0
execute if entity @s[team=gold] run scoreboard players set $Gold TeamOccupied 0
execute if entity @s[team=gray] run scoreboard players set $Gray TeamOccupied 0
execute if entity @s[team=green] run scoreboard players set $Green TeamOccupied 0
execute if entity @s[team=light_purple] run scoreboard players set $LightPurple TeamOccupied 0
execute if entity @s[team=red] run scoreboard players set $Red TeamOccupied 0
execute if entity @s[team=white] run scoreboard players set $White TeamOccupied 0
execute if entity @s[team=yellow] run scoreboard players set $Yellow TeamOccupied 0
team leave @s
#----------------MESSAGES------------------#
tellraw @s ["",{"text":"Choose the island you'd like to join by clicking its button!","color":"white"}]
tellraw @s ["",{"text":"NOTE: To cancel, just click your existing island color.","color":"red"}]
gamemode adventure @s[team=!,gamemode=survival]
