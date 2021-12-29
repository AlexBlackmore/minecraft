#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
#Remove increase from instant damage potion effect
scoreboard players remove @s[gamemode=!creative] P_DamageTaken 60

#Apply damage (based on whether the player has absorption)
scoreboard players set $DamageOutput2 Temp 0
execute unless score @s PlayerAEHP matches 1.. run scoreboard players operation @s PlayerEHP -= @s P_DamageTaken
execute if score @s PlayerAEHP matches 1.. run function stats:absorption/damaged

#Find HP Difference (not including absorption) for damage display
scoreboard players operation $DamageOutput Temp = @s PlayerHP
function stats:calculate/current_health
scoreboard players operation $DamageOutput Temp -= @s PlayerHP

#Add Absorption HP lost to make total damage dealt
scoreboard players operation $DamageOutput Temp += $DamageOutput2 Temp
#------------------------------------------#