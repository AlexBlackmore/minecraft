#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},distance=..10] at @s store result score $XpAmount Temp run data get entity @s Item.Count
execute unless score $XpAmount Temp matches 1 run function skills:farming/add_xp
scoreboard players reset $XpAmount Temp
scoreboard players reset @s B_Carrot
#------------------------------------------#