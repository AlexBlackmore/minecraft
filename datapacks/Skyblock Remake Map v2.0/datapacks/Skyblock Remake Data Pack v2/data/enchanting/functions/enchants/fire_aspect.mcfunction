#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------LIFE STEAL----------------#
execute store result score @s E_FireAspectLVL run data get storage blue:stats Weapon.tag.Base.Enchantments[{fire_aspect:{identifier:1b}}].fire_aspect.damage
execute store result score @s E_FireAspectTime run data get storage blue:stats Weapon.tag.Base.Enchantments[{fire_aspect:{identifier:1b}}].fire_aspect.duration 20
execute store result entity @s Fire short 1 run scoreboard players get @s E_FireAspectTime
#------------------------------------------#