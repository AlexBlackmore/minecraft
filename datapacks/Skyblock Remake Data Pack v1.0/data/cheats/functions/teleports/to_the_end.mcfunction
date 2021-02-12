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

tellraw @s ["",{"text":"Teleporting to The End...","color":"yellow","bold":false}]
execute in skyblock:the_end run tp @s 168.0 101 1.0 90 0
function profiling:set_location/the_end
#------------------------------------------#