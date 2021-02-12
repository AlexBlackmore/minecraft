#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------RESET ISLAND IF ON ONE----------#
execute if entity @s[team=aqua] run function profiling:reset/aqua
execute if entity @s[team=black] run function profiling:reset/black
execute if entity @s[team=blue] run function profiling:reset/blue
execute if entity @s[team=dark_aqua] run function profiling:reset/dark_aqua
execute if entity @s[team=dark_blue] run function profiling:reset/dark_blue
execute if entity @s[team=dark_gray] run function profiling:reset/dark_gray
execute if entity @s[team=dark_green] run function profiling:reset/dark_green
execute if entity @s[team=dark_purple] run function profiling:reset/dark_purple
execute if entity @s[team=dark_red] run function profiling:reset/dark_red
execute if entity @s[team=gold] run function profiling:reset/gold
execute if entity @s[team=gray] run function profiling:reset/gray
execute if entity @s[team=green] run function profiling:reset/green
execute if entity @s[team=light_purple] run function profiling:reset/light_purple
execute if entity @s[team=red] run function profiling:reset/red
execute if entity @s[team=white] run function profiling:reset/white
execute if entity @s[team=yellow] run function profiling:reset/yellow
#---------------PLAYER IDS-----------------#
scoreboard players operation @s PlayerID = Global PlayerID
scoreboard players add Global PlayerID 1
tag @s remove NeedID
#-----------ACCESSORY BAG SLOTS------------#
scoreboard players set @p BaseAccessSlots 0
function menu:accessory_bag/avaliable_slots
#------------------STATS-------------------#
function stats:base_player_stats
function stats:restore_health
#--------------DRAGON RECORDS--------------#
scoreboard players set @s End_RDProtector 0
scoreboard players set @s End_RDOld 0
scoreboard players set @s End_RDWise 0
scoreboard players set @s End_RDUnstable 0
scoreboard players set @s End_RDYoung 0
scoreboard players set @s End_RDStrong 0
scoreboard players set @s End_RDSuperior 0
#------------------OTHER-------------------#
tag @s add CheatsEnabled
scoreboard players set @s Location -1
scoreboard players set @s SubLocation -1

execute in minecraft:overworld run tp @s 106 69 -58 -90 0
gamemode adventure @s
xp set @s 0 levels
xp set @s 0 points
clear @s
team leave @s
#----------------MESSAGES------------------#
tellraw @s ["",{"text":"WELCOME TO THE HYPIXEL SKYBLOCK REMAKE!","color":"red","bold":true}]
tellraw @s ["",{"text":"Created by ","color":"white"},{"text":"BlueCommander","color":"aqua"},{"text":"!","color":"white"}]
tellraw @s ["",{"text":"Keep Up To Date: ","color":"white"},{"text":"[Youtube]","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/BlueCommander"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Youtube Channel!"}}},{"text":" [Twitter]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/ItsBlueCmdr"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Twitter!"}}},{"text":" [Discord]","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://discord.com/invite/g6zHaNC"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my discord!"}}},{"text":"\n"},{"text":"[Click to view additional credits]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function skyblock:view_credits"}}]
tellraw @s ["",{"text":"To begin, choose the island you'd like to join by clicking its button!","color":"white"}]
#------------------------------------------#