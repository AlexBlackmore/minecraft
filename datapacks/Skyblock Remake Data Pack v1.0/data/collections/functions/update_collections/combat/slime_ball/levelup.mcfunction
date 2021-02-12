#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SlimeballL matches -1 run function collections:reward_messages/combat/slime_ball/0
execute if score @s C_SlimeballL matches 0 run function collections:reward_messages/combat/slime_ball/1
execute if score @s C_SlimeballL matches 1 run function collections:reward_messages/combat/slime_ball/2
execute if score @s C_SlimeballL matches 2 run function collections:reward_messages/combat/slime_ball/3
execute if score @s C_SlimeballL matches 3 run function collections:reward_messages/combat/slime_ball/4
execute if score @s C_SlimeballL matches 4 run function collections:reward_messages/combat/slime_ball/5
execute if score @s C_SlimeballL matches 5 run function collections:reward_messages/combat/slime_ball/6
execute if score @s C_SlimeballL matches 6 run function collections:reward_messages/combat/slime_ball/7
execute if score @s C_SlimeballL matches 7 run function collections:reward_messages/combat/slime_ball/8
execute if score @s C_SlimeballL matches 8 run function collections:reward_messages/combat/slime_ball/9
scoreboard players add @s C_SlimeballL 1
scoreboard players add @s C_SlimeballNL 1
execute if score @s C_Slimeball >= @s C_SlimeballN unless score @s C_SlimeballL matches 9.. run function collections:update_collections/combat/slime_ball/levelup
#------------------------------------------#