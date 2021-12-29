#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------MAXED OUT STATS--------------#
execute if score @s P_Health matches 21250001.. run function stats:stat_update/maxed/health
#-------------MAXED OUT STATS--------------#
scoreboard players reset @s P_MaxHealth
scoreboard players set @s P_MaxDefense 2147483600
scoreboard players operation @s P_MaxDefense /= @s P_Health
scoreboard players remove @s P_MaxDefense 100
execute if score @s P_MaxDefense matches 1.. if score @s P_MaxDefense > @s P_Defense run scoreboard players reset @s P_MaxDefense
#----------TELL PLAYER IF CAPPING----------#
execute if score @s P_MaxDefense matches 1.. if score @s P_MaxDefense < @s P_Defense run tellraw @s [{"text":"AYO THAT'S CAP! ","color":"red"},{"text":"Currently the remake has a max of ","color":"red"},{"text":"21,000,000 EHP","color":"green"},{"text":". \n > Your ","color":"white"},{"text":"Defense","color":"green"},{"text":" is temporarily reduced to account for this.","color":"red"},{"text":"\nThis limit will be increased in a later version.","color":"gray","italic":true}]
#------------------------------------------#