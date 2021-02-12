#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
execute store result score @s P_BaseDamage run data get entity @e[type=!#stats:show_hp,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.attack_damage"}].Base
execute unless score @s P_BaseDamage matches 1.. run scoreboard players set @s P_BaseDamage 5
tag @s add MobArrow
data merge entity @s {damage:1d,PierceLevel:1b}
#------------------------------------------#