#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------RANDOM Y MOTION WHILE WAITING-------#
scoreboard players set in RandMath 2
execute if entity @e[type=ender_dragon,name="Old Dragon"] run scoreboard players set in RandMath 1
execute if entity @e[type=ender_dragon,name="Superior Dragon"] run scoreboard players set in RandMath 3
execute if entity @e[type=ender_dragon,name="Young Dragon"] run scoreboard players set in RandMath 3
scoreboard players set in1 RandMath 20
execute if entity @e[type=ender_dragon,name="Old Dragon"] run scoreboard players set in1 RandMath 15
execute if entity @e[type=ender_dragon,name="Superior Dragon"] run scoreboard players set in1 RandMath 22
execute if entity @e[type=ender_dragon,name="Young Dragon"] run scoreboard players set in1 RandMath 25
function skyblock:random/range_lcg
execute if score $DragYMotion End_DragSeq matches 1.. run scoreboard players operation out RandMath *= c-1 Constant
scoreboard players operation $DragYMotion End_DragSeq = out RandMath
#----------------RESET TAGS----------------#
kill @e[sort=nearest,limit=1,tag=End_FireballTarget]
tag @a remove End_RushTarget
#---------TRIANGULAR DISTRIBUTION----------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 15
execute if entity @e[type=ender_dragon,name="Wise Dragon"] run scoreboard players set in1 RandMath 10
execute if entity @e[type=ender_dragon,name="Superior Dragon"] run scoreboard players set in1 RandMath 13
function skyblock:random/range_lcg
scoreboard players operation $AbilityTimer End_DragSeq = out RandMath
function skyblock:random/range_lcg
scoreboard players operation $AbilityTimer End_DragSeq += out RandMath
scoreboard players add $AbilityTimer End_DragSeq 5
scoreboard players operation $AbilityTimer End_DragSeq *= c20 Constant
#------------------------------------------#