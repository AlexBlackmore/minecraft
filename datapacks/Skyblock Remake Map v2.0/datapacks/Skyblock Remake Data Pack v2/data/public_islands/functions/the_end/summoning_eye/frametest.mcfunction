#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if block ~ ~ ~ end_portal_frame run function public_islands:the_end/summoning_eye/eyetype
execute if block ~ ~ ~ #skyblock:allowed positioned ^ ^ ^0.2 if entity @s[distance=..5] run function public_islands:the_end/summoning_eye/frametest
#------------------------------------------#