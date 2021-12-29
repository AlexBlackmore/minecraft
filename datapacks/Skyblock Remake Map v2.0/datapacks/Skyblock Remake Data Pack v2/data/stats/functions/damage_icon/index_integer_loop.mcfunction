#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------REVERSE INT----------------#
scoreboard players operation $LastInt Temp = $ReversingInt Temp
scoreboard players operation $LastInt Temp %= c10 Constant
scoreboard players operation $ReversingInt Temp /= c10 Constant

data merge storage blue:stats {CritCurrent:[0]}
execute store result storage blue:stats CritCurrent[0] int 1 run scoreboard players get $LastInt Temp
data modify storage blue:stats CritValues append from storage blue:stats CritCurrent
execute if score $ReversingInt Temp matches 1.. run function stats:damage_icon/index_integer_loop
#------------------------------------------#