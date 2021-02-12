#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GhasttearL matches -1 run function collections:reward_messages/combat/ghast_tear/0
execute if score @s C_GhasttearL matches 0 run function collections:reward_messages/combat/ghast_tear/1
execute if score @s C_GhasttearL matches 1 run function collections:reward_messages/combat/ghast_tear/2
execute if score @s C_GhasttearL matches 2 run function collections:reward_messages/combat/ghast_tear/3
execute if score @s C_GhasttearL matches 3 run function collections:reward_messages/combat/ghast_tear/4
execute if score @s C_GhasttearL matches 4 run function collections:reward_messages/combat/ghast_tear/5
execute if score @s C_GhasttearL matches 5 run function collections:reward_messages/combat/ghast_tear/6
execute if score @s C_GhasttearL matches 6 run function collections:reward_messages/combat/ghast_tear/7
execute if score @s C_GhasttearL matches 7 run function collections:reward_messages/combat/ghast_tear/8
execute if score @s C_GhasttearL matches 8 run function collections:reward_messages/combat/ghast_tear/9
scoreboard players add @s C_GhasttearL 1
scoreboard players add @s C_GhasttearNL 1
execute if score @s C_Ghasttear >= @s C_GhasttearN unless score @s C_GhasttearL matches 9.. run function collections:update_collections/combat/ghast_tear/levelup
#------------------------------------------#