#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
setblock ~ ~ ~ minecraft:end_portal_frame[eye=true]
scoreboard players operation @e[tag=End_EyeStand,sort=nearest,limit=1] End_EyeID = @s PlayerID
execute at @e[tag=End_EyeStand,sort=nearest,limit=1] run particle minecraft:portal ~ ~1.5 ~ 0.1 0.2 0.1 0.01 100
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
scoreboard players add @s End_EyeCount 1
scoreboard players add Global End_EyeCount 1
execute if score Global End_EyeCount matches 8.. run function public_islands:the_end/summoning_eye/placeeye_complete
execute unless score Global End_EyeCount matches 8.. run function public_islands:the_end/summoning_eye/placeeye_incomplete
#------------------------------------------#