#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
tag @s[nbt={Air:0s}] add Drowning 
execute if entity @s[tag=Drowning] run scoreboard players operation @s ApplyTrueDamage = @s P_Health
execute if entity @s[tag=Drowning] run scoreboard players operation @s ApplyTrueDamage /= c20 Constant
execute if entity @s[tag=Drowning] run scoreboard players add @s ApplyTrueDamage 60
scoreboard players set @s[tag=Drowning] P_IconColour 2
scoreboard players reset @s[tag=Drowning] P_DamageTaken
tag @s remove Drowning
advancement revoke @s only stats:manual_damage/overrides/drown
#------------------------------------------#