#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------DMG MULTIPLIER---------------#
scoreboard players set $DmgMult Temp 0
tag @s add SnipeSelected
execute at @s as @a if score @s PlayerID = @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow,scores={E_BowSnipe=1..}] PlayerID facing entity @s feet run function enchanting:damage_multiplier/snipe_loop
tag @s remove SnipeSelected
scoreboard players operation $DmgMult Temp /= c10 Constant
scoreboard players operation $DmgMult Temp *= @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow,scores={E_BowSnipe=1..}] E_BowSnipe
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#