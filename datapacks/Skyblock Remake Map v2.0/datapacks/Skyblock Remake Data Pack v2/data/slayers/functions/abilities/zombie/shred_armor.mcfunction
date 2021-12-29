#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
scoreboard players operation @s S_BefShredDef = @s P_Defense
scoreboard players operation @s S_ShredDef = @s P_Defense
scoreboard players operation @s S_ShredDef /= c4 Constant
scoreboard players operation @s P_Defense -= @s S_ShredDef

function stats:calculate/stats

execute as @s run scoreboard players set @s ApplyTrueDamage 100
scoreboard players set @s S_ShredArmorCd 60
tag @s add ArmorShred