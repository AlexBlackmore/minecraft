#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------NATURAL REGEN---------------#
#Calculate New HP - (100HP+1.25MAXHP)/100
scoreboard players operation @s PlayerEHP = @s PlayerHP
scoreboard players operation @s PlayerEHP *= c100 Constant
scoreboard players operation @s PlayerEHP += @s P_RegenAmount2
execute if score @s PlayerEHP matches ..-1 run scoreboard players set @s PlayerEHP 2147483647
scoreboard players operation @s PlayerEHP /= c100 Constant
#Assign New HP to Current HP
scoreboard players operation @s PlayerHP = @s PlayerEHP
#Calculate New EHP - New HP x (MAXDEF+100)/100
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerEHP *= @s P_MultDefense
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerEHP /= c100 Constant
#Can't heal above max
execute if score @s PlayerEHP > @s P_EHP run function stats:restore_health
execute if score @s PlayerHP > @s P_Health run function stats:restore_health

scoreboard players reset @s P_RegenTimer
#------------------------------------------#