#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------SLEEPING TO REMNANT------------#
scoreboard players operation Global End_EyeCount -= @s End_EyeCount

execute if data entity @s Inventory[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtosummoning/inventory
execute if entity @s[tag=Menu] at @s as @e[tag=EnderMenuChest] if score @s PlayerID = @p PlayerID if data entity @s Items[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtosummoning/enderchest_open
execute if entity @s[tag=!InsideEnderChest] if data entity @s EnderItems[].tag.SleepingEye run function public_islands:the_end/summoning_eye/sleepingtosummoning/enderchest_closed
tag @s remove InsideEnderChest

execute at @s as @e[tag=End_EyeStand] if score @s End_EyeID = @p PlayerID at @s run setblock ~ ~1 ~ minecraft:end_portal_frame[eye=false]
execute at @s as @e[tag=End_EyeStand] if score @s End_EyeID = @p PlayerID run scoreboard players reset @s End_EyeID
scoreboard players reset @s End_EyeCount
scoreboard players reset Temp End_EyeCount
#------------------------------------------#