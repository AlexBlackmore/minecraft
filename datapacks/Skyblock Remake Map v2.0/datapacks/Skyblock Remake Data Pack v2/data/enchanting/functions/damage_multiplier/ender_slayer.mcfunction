#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{ender_slayer:{identifier:1b}}].ender_slayer.bonus
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{dragon_hunter:{identifier:1b}}].dragon_hunter.bonus
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] store result score $DmgMult Temp run scoreboard players get @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] E_BowDragHunt
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#