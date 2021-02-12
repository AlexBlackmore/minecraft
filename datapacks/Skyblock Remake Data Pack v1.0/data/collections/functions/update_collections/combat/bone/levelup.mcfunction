#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_BoneL matches -1 run function collections:reward_messages/combat/bone/0
execute if score @s C_BoneL matches 0 run function collections:reward_messages/combat/bone/1
execute if score @s C_BoneL matches 1 run function collections:reward_messages/combat/bone/2
execute if score @s C_BoneL matches 2 run function collections:reward_messages/combat/bone/3
execute if score @s C_BoneL matches 3 run function collections:reward_messages/combat/bone/4
execute if score @s C_BoneL matches 4 run function collections:reward_messages/combat/bone/5
execute if score @s C_BoneL matches 5 run function collections:reward_messages/combat/bone/6
execute if score @s C_BoneL matches 6 run function collections:reward_messages/combat/bone/7
execute if score @s C_BoneL matches 7 run function collections:reward_messages/combat/bone/8
execute if score @s C_BoneL matches 8 run function collections:reward_messages/combat/bone/9
scoreboard players add @s C_BoneL 1
scoreboard players add @s C_BoneNL 1
execute if score @s C_Bone >= @s C_BoneN unless score @s C_BoneL matches 9.. run function collections:update_collections/combat/bone/levelup
#------------------------------------------#