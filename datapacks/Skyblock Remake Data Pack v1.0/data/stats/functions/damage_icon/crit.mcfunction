#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DAMAGE ICON----------------#
#Goes WWYGRR - WWY...
data merge storage blue:stats {CritValues:[["✧"]]}
scoreboard players operation $ReversingInt Temp = $DamageOutput Temp
function stats:damage_icon/index_integer_loop
data modify storage blue:stats CritValues append value ["✧"]
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"nbt":"CritValues[-1][0]","storage":"blue:stats","color":"white"},{"nbt":"CritValues[-2][0]","storage":"blue:stats","color":"white"},{"nbt":"CritValues[-3][0]","storage":"blue:stats","color":"yellow"},{"nbt":"CritValues[-4][0]","storage":"blue:stats","color":"gold"},{"nbt":"CritValues[-5][0]","storage":"blue:stats","color":"red"},{"nbt":"CritValues[-6][0]","storage":"blue:stats","color":"red"},{"nbt":"CritValues[-7][0]","storage":"blue:stats","color":"white"},{"nbt":"CritValues[-8][0]","storage":"blue:stats","color":"white"},{"nbt":"CritValues[-9][0]","storage":"blue:stats","color":"yellow"},{"nbt":"CritValues[-10][0]","storage":"blue:stats","color":"gold"},{"nbt":"CritValues[-11][0]","storage":"blue:stats","color":"red"},{"nbt":"CritValues[-12][0]","storage":"blue:stats","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
tag @s remove DamageDealtNew
#------------------------------------------#