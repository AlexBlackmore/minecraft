#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if entity @s[tag=Menu] as @e[tag=MenuChest] if score @s PlayerID = @p PlayerID run function menu:kill
scoreboard players set @s[tag=Menu] MenuSpawnDelay 5

execute as @e[tag=EnderChestZealot] run function skyblock:kill

function profiling:set_location/flower_shop
scoreboard players set @s SubLocation 2
tellraw @s [{"text":"Warped to Flower Shop!","color":"light_purple"}]
execute in skyblock:main_island run tp @s -5 71 -15 140 0
execute as @e[tag=NPCMarco2,tag=!NPCMain] at @s unless entity @p[scores={SubLocation=3}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[tag=FlowerHouseWarp] at @s unless entity @p[scores={SubLocation=3}] run data merge entity @s {CustomNameVisible:0b}
effect clear @s minecraft:invisibility
gamemode adventure @s[team=!,gamemode=survival]
