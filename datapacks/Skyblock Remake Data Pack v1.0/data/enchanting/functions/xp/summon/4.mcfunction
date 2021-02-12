#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
summon minecraft:experience_orb ~ ~ ~ {Value:4}
scoreboard players remove Global ExperienceXP 4
execute if score Global ExperienceXP matches 4.. run function enchanting:xp/summon/4
#------------------------------------------#