#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------MAXED OUT STATS--------------#
execute if score @s P_Defense matches 21250001.. run function stats:stat_update/maxed/defense
#-------------MAXED OUT STATS--------------#
scoreboard players reset @s P_MaxDefense
function stats:calculate/defense_multiplier
scoreboard players set @s P_MaxHealth 2147483600
scoreboard players operation @s P_MaxHealth /= @s P_MultDefense
scoreboard players remove @s P_MaxHealth 100
execute if score @s P_MaxHealth matches 1.. if score @s P_MaxHealth > @s P_Health run scoreboard players reset @s P_MaxHealth
#----------TELL PLAYER IF CAPPING----------#
execute if score @s P_MaxHealth matches 1.. if score @s P_MaxHealth < @s P_Health run tellraw @s [{"text":"NOTE: ","color":"aqua"},{"text":"Currently the remake has a max of ","color":"white"},{"text":"21,000,000 EHP","color":"green"},{"text":". \n > Your ","color":"white"},{"text":"Health","color":"red"},{"text":" is temporarily reduced to account for this.","color":"white"},{"text":"\nThis limit will be increased in a later version.","color":"gray","italic":true}]
#------------------------------------------#