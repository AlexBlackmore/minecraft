#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------PLAYER JOIN----------------#
execute if score before_comma Temp matches 1000000..999999999 run function skyblock:split_comma_numbers/million
execute if score before_comma Temp matches 1000000..999999999 run function skyblock:split_comma_numbers/process
execute if score before_comma Temp matches 1000..999999 run function skyblock:split_comma_numbers/thousands
execute if score before_comma Temp matches 1000..999999 run function skyblock:split_comma_numbers/process
#------------------------------------------#