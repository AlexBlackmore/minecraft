#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------MANA POOL CALCULATE------------#
scoreboard players set @s P_ManaPool 100
scoreboard players operation @s P_ManaPool += @s P_Intelligence
#---------RESET MANA IF TOO LARGE----------#
scoreboard players operation $MaxMana Temp = @s P_ManaPool
scoreboard players operation $MaxMana Temp *= c2 Constant
execute unless score UnlimitedMana Setting matches 1 if score @s PlayerMana > $MaxMana Temp run scoreboard players operation @s PlayerMana = $MaxMana Temp
#---------------REGEN AMOUNT---------------#
scoreboard players operation @s P_ManaRegen = @s P_ManaPool
scoreboard players operation @s P_ManaRegen /= c50 Constant
#-----------------UPDATES------------------#
scoreboard players operation @s P_PreIntel = @s P_Intelligence
#------------------------------------------#