#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
execute store result score @s LuckBonus run data get entity @s SelectedItem.tag.Base.Enchantments[{luck:{identifier:1b}}].luck.bonus
execute if entity @s[scores={LuckBonus=1..}] run scoreboard players operation @s LuckBonus *= @s DropChance
execute if entity @s[scores={LuckBonus=1..}] run scoreboard players operation @s LuckBonus /= c100 Constant
execute if entity @s[scores={LuckBonus=1..}] run scoreboard players operation @s DropChance += @s LuckBonus
#------------------------------------------#