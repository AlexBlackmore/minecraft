#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------RANDOM BONUS---------------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 4
function skyblock:random/range_lcg
execute if score out RandMath matches 0 run scoreboard players operation $FireballRandom End_DragSeq *= c120 Constant
execute if score out RandMath matches 1 run scoreboard players operation $FireballRandom End_DragSeq *= c110 Constant
execute if score out RandMath matches 2 run scoreboard players operation $FireballRandom End_DragSeq *= c100 Constant
execute if score out RandMath matches 3 run scoreboard players operation $FireballRandom End_DragSeq *= c90 Constant
execute if score out RandMath matches 4 run scoreboard players operation $FireballRandom End_DragSeq *= c80 Constant
#------------------------------------------#