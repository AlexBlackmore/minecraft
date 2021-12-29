#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 3
function skyblock:random/range_lcg
scoreboard players operation $AbilityType End_DragSeq = out RandMath
execute if score $AbilityType End_DragSeq matches 0 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s run tag @p[scores={SubLocation=35}] add End_RushTarget
execute if score $AbilityType End_DragSeq matches 2 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s at @p[scores={SubLocation=35}] run summon armor_stand ~ ~ ~ {Tags:["End_FireballTarget"],Invisible:1b,Marker:1b,NoGravity:1b}
#------------------------------------------#