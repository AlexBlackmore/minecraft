#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{cubism:{identifier:1b}}].cubism.bonus
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] store result score $DmgMult Temp run scoreboard players get @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] E_BowCubism
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#