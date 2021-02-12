#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players operation @s P_PetLuck *= c2 Constant

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000
function skyblock:random/range_lcg

scoreboard players operation out RandMath += @s P_PetLuck
execute if score in1 RandMath < out RandMath run scoreboard players set out RandMath 1000
scoreboard players operation $PetDropRarity DropChance = out RandMath

scoreboard players operation @s P_PetLuck /= c2 Constant
#------------------------------------------#