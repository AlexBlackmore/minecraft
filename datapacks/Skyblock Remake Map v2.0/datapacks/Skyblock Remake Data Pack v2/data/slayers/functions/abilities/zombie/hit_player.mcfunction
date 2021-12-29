#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
execute as @a[distance=..5] unless entity @s[scores={P_IconColour=1..}] run scoreboard players set @s P_IconColour 4
execute as @a[distance=..5] unless entity @s[scores={P_IconColour=1..}] run scoreboard players set @s ApplyTrueDamage 25
tag @s add GoBack