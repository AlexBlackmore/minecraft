#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------LIFE STEAL----------------#
execute store result score $EnchantLevel Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{vampirism:{identifier:1b}}].vampirism.level
scoreboard players operation $VampirismVal Temp = @s P_Health
scoreboard players operation $VampirismVal Temp *= $EnchantLevel Temp
scoreboard players operation $VampirismVal Temp /= c100 Constant
scoreboard players operation @s PlayerHP += $VampirismVal Temp
function stats:calculate/current_effective_health
#------------------------------------------#