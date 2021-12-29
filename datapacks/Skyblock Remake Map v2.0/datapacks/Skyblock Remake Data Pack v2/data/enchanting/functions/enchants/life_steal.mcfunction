#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------LIFE STEAL----------------#
execute store result score $EnchantLevel Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{life_steal:{identifier:1b}}].life_steal.bonus_float 10
scoreboard players operation $LifeStealVal Temp *= $EnchantLevel Temp
scoreboard players operation $LifeStealVal Temp /= c1000 Constant
scoreboard players operation @s PlayerHP += $LifeStealVal Temp
function stats:calculate/current_effective_health
#------------------------------------------#