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

tellraw @s ["",{"text":"Dungeons have not been added yet!","color":"red"}]
execute in skyblock:main_island run tp @s -45 88 9 0 0
#------------------------------------------#