#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
scoreboard players set after_comma_2 Temp 0
scoreboard players set before_comma Temp 0
scoreboard players set after_comma Temp 0
scoreboard players operation before_comma Temp = base_number Temp
function skyblock:split_comma_numbers/process
#------------------------------------------#