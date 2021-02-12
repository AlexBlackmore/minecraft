#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add AutoFairySoulStats Setting 1
execute if score AutoFairySoulStats Setting matches 2.. run scoreboard players set AutoFairySoulStats Setting 0

execute if score AutoFairySoulStats Setting matches 1 as @a run function cheats:settings/resources/add_fairy_soul_stats
execute if score AutoFairySoulStats Setting matches 0 as @a run function cheats:settings/resources/remove_fairy_soul_stats

execute if score AutoFairySoulStats Setting matches 1 run tellraw @a ["",{"text":"You will now receive all the Fairy Soul Stat Rewards automatically.","color":"green"}]
execute if score AutoFairySoulStats Setting matches 0 run tellraw @a ["",{"text":"You will no longer receive all the Fairy Soul Stat Rewards automatically.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#