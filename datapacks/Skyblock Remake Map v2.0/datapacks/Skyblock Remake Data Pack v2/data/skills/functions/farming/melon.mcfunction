#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
execute if score @s O_Melon matches 2.. run tellraw @s {"text":"You have placed too many of this crop. You will not gain Farming XP until enough are broken.","color":"red"}
execute unless score @s O_Melon matches 1.. run scoreboard players set $XpAmount Temp 4
execute unless score @s O_Melon matches 1.. run function skills:farming/add_xp
execute if score @s O_Melon matches 1.. run scoreboard players remove @s O_Melon 1
scoreboard players reset @s B_Melon
#------------------------------------------#