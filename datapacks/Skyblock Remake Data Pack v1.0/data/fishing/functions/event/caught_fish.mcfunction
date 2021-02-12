#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FISH BAIT------------------#
#function enchanting:enchants/caster
#-----------ITEM OR SEA CREATURE-----------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath <= @s P_SCChance run function fishing:event/caught_fish/got_sea_creature
execute unless score out RandMath <= @s P_SCChance run function fishing:event/caught_fish/got_item
#--------------MAGNET ENCHANT--------------#
execute if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{magnet:{identifier:1b}}]}}}}] run function enchanting:enchants/magnet
#------------------RESET-------------------#
scoreboard players reset @s Catch
#------------------------------------------#