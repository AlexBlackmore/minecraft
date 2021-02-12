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

tellraw @s ["",{"text":"[NPC] Wizard: ","color":"yellow"},{"text":"Hmmm...something appears to be broken. Give me 3-5 business days to fix!"}]
execute in skyblock:main_island run tp @s 46.5 122 72.5 90 0
#------------------------------------------#