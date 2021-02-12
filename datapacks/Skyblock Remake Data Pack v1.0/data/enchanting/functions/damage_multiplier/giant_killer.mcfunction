#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#EQUAL TO: (EnemyMaxHP−PlayerMaxHP)/PlayerHP×0.1×EnchantLevel×100%
#WITH RANGE 0..25
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run scoreboard players get @s DisplayMaxHealth
execute store result score $Health Temp run scoreboard players get @p[tag=TargetEntity] P_Health
scoreboard players operation $DmgMult Temp -= $Health Temp
scoreboard players operation $DmgMult Temp /= $Health Temp
scoreboard players operation $DmgMult Temp *= c100 Constant
execute store result score $EnchantLevel Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{giant_killer:{identifier:1b}}].giant_killer.level
scoreboard players operation $DmgMult Temp *= $EnchantLevel Temp
scoreboard players operation $DmgMult Temp /= c10 Constant
execute if score $DmgMult Temp matches ..0 run scoreboard players set $DmgMult Temp 0
execute if score $DmgMult Temp matches 25.. run scoreboard players set $DmgMult Temp 25

scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#