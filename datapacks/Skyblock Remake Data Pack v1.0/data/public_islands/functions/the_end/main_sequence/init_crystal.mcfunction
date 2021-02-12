#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------MESSAGES-----------------#
execute as @e[tag=EndCrystalInit] in skyblock:the_end positioned 0 1 0 run tp @e[tag=EndCrystalHitBoxInit,sort=nearest,limit=1] @s
execute as @e[tag=EndCrystalInit] at @s as @e[tag=EndCrystalHitBoxInit,sort=nearest,limit=1,distance=..3] run tp @s ~ ~-0.02 ~
execute as @e[tag=EndCrystalInit] at @s run tag @e[tag=EndCrystalHitBoxInit,sort=nearest,limit=1,distance=..3] remove EndCrystalHitBoxInit
tag @e remove EndCrystalInit
#------------------------------------------#