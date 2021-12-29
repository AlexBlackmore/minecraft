#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MESSAGES------------------#
function skyblock:view_credits
tellraw @s ["",{"text":" WELCOME BACK TO THE HYPIXEL SKYBLOCK REMAKE! ","color":"red","bold":true,"underlined":true}]
#---------------PLAYER JOIN----------------#
execute unless score Global End_DragSeq matches -1 unless entity @s[scores={Location=8,SubLocation=35}] run scoreboard players reset @s End_DragDamage

scoreboard players reset @s join_game
#------------------------------------------#