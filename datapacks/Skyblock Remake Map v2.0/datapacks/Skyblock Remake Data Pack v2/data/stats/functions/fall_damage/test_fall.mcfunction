#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------APPLY REDUCTIONS-------------#
execute store result score $FallMinimum Temp run data get entity @s Inventory[{Slot:100b}].tag.Base.Enchantments[{feather_falling:{identifier:1b}}].feather_falling.level
scoreboard players add $FallMinimum Temp 5
scoreboard players operation @s Fall /= c100 Constant
execute if score $FallMinimum Temp < @s Fall run function stats:fall_damage/take_damage
scoreboard players reset @s Fall
#------------------------------------------#