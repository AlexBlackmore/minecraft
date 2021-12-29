#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute if entity @s[scores={End_EyeCount=1..}] run function public_islands:the_end/summoning_eye/sleepingtosummoning
execute as @e[tag=EnderChestZealot] run function skyblock:kill
execute at @s in skyblock:main_island run tp @s ~-671 ~ ~-276
scoreboard players set @s Location 1
#------------------------------------------#