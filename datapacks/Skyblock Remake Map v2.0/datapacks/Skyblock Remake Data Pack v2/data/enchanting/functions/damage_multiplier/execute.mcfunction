#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#EQUAL TO: (EnemyMaxHP−EnemyHP)/EnemyMaxHP×0.002×EnchantLevel×100%
#-------------DMG MULTIPLIER---------------#
execute store result score $DmgMult Temp run scoreboard players get @s DisplayMaxHealth
execute store result score $Health Temp run scoreboard players get @s P_Health
scoreboard players operation $DmgMult Temp -= $Health Temp
scoreboard players operation $DmgMult Temp *= c100 Constant
execute store result score $Health Temp run scoreboard players get @s DisplayMaxHealth
scoreboard players operation $DmgMult Temp /= $Health Temp
execute store result score $EnchantLevel Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{execute:{identifier:1b}}].execute.bonus_float 10
scoreboard players operation $DmgMult Temp *= $EnchantLevel Temp
scoreboard players operation $DmgMult Temp /= c50 Constant

scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#------------------------------------------#