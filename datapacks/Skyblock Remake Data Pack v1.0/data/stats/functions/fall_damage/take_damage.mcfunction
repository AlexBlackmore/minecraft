#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------APPLY REDUCTIONS-------------#
scoreboard players operation @s ApplyDamage = @s Fall
scoreboard players operation @s ApplyDamage *= c25 Constant
scoreboard players remove @s ApplyDamage 162
scoreboard players operation @s ApplyDamage /= c10 Constant
execute if data entity @s Inventory[{Slot:100b}].tag.Base.Enchantments[{feather_falling:{identifier:1b}}] run function enchanting:enchants/feather_falling
#------------------------------------------#