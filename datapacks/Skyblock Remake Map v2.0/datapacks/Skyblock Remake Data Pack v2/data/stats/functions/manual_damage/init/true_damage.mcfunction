#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DAMAGE DEALING--------------#
#Make damage visible (if not already hurt)
execute unless entity @s[scores={P_IconColour=1..}] if entity @s[type=!#enchanting:checks/is_undead] run effect give @s minecraft:instant_damage 1 0 true
execute unless entity @s[scores={P_IconColour=1..}] if entity @s[type=#enchanting:checks/is_undead] run effect give @s minecraft:instant_health 1 0 true

#Set P_ManualDmgType (controls how the damage is treated in hurt_update)
scoreboard players set @s P_ManualDmgType 2

#Player damage
execute if entity @s[type=player] run scoreboard players operation @s P_DamageTaken = @s ApplyTrueDamage

#Reset
scoreboard players reset @s ApplyTrueDamage
#------------------------------------------#