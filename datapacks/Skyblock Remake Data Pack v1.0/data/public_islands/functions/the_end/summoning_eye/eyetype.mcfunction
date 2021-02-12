#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if entity @s[scores={Location=8,rc_content=33}] unless score Global End_DragSeq matches ..-1 if block ~ ~ ~ end_portal_frame[eye=false] run function public_islands:the_end/summoning_eye/placeeye
execute unless entity @s[scores={End_EyeCool=1..}] if entity @s[scores={Location=8,rc_content=34}] if block ~ ~ ~ end_portal_frame[eye=true] if score @e[tag=End_EyeStand,sort=nearest,limit=1] End_EyeID = @s PlayerID run function public_islands:the_end/summoning_eye/collecteye
execute if entity @s[scores={Location=8,rc_content=34,End_EyeCool=1..}] if block ~ ~ ~ end_portal_frame[eye=true] run function public_islands:the_end/summoning_eye/eyewait
#------------------------------------------#