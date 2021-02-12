#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
summon minecraft:experience_orb ~ ~ ~ {Value:1}
scoreboard players remove Global ExperienceXP 1
execute if score Global ExperienceXP matches 1.. run function enchanting:xp/summon/1
#------------------------------------------#