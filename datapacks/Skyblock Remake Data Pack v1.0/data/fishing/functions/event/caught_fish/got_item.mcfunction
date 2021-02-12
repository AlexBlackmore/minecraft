#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000
function skyblock:random/range_lcg
execute if score out RandMath <= @s F_TreasureC run function fishing:event/caught_fish/item/got_treasure

execute if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{blessing:{identifier:1b}}]}}}}] run function enchanting:enchants/blessing/random_test
#------------------------------------------#