#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------START DRAG SEQUENCE------------#
setblock ~ ~2 ~ sea_lantern
setblock ~ ~1 ~ purple_stained_glass
setblock ~ ~ ~ air
execute if score Global End_DragSeq matches 253 run setblock ~ ~-1 ~ sea_lantern
execute if score Global End_DragSeq matches 254 run fill ~ ~ ~ ~ ~-1 ~ pink_stained_glass
execute if score Global End_DragSeq matches 250..275 run fill ~8 ~5 ~8 ~-8 ~8 ~-8 air replace minecraft:purple_stained_glass_pane
tp @s ~ ~0.65 ~
particle minecraft:portal ~ ~ ~ 3 1 3 0.01 40 normal
#------------------------------------------#