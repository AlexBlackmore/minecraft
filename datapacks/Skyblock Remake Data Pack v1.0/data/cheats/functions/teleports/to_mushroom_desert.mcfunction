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

tellraw @s ["",{"text":"Teleporting to Mushroom Desert...","color":"yellow","bold":false}]
execute in skyblock:mushroom_desert run tp @s 152.5 76.5 -360.5 -135 0
function profiling:set_location/mushroom_desert
#------------------------------------------#