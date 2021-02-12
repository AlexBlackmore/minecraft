#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#No actually treated as bonus defence, just used so I didn't need to make more scoreboards
#-------------APPLY REDUCTIONS-------------#
scoreboard players set $BonusDef Temp 100
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:100b}].tag.Base.Enchantments[{feather_falling:{identifier:1b}}].feather_falling.dmgreduction
scoreboard players operation $BonusDef Temp -= $BonusDefAdd Temp
execute if score $BonusDef Temp matches ..0 run scoreboard players set $BonusDef Temp 0
scoreboard players remove @s ApplyDamage 10
scoreboard players operation @s ApplyDamage /= c5 Constant
scoreboard players operation @s ApplyDamage *= $BonusDef Temp
scoreboard players operation @s ApplyDamage /= c20 Constant
scoreboard players add @s ApplyDamage 10
#------------------------------------------#