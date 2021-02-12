#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SpidereyeL matches -1 run function collections:reward_messages/combat/spider_eye/0
execute if score @s C_SpidereyeL matches 0 run function collections:reward_messages/combat/spider_eye/1
execute if score @s C_SpidereyeL matches 1 run function collections:reward_messages/combat/spider_eye/2
execute if score @s C_SpidereyeL matches 2 run function collections:reward_messages/combat/spider_eye/3
execute if score @s C_SpidereyeL matches 3 run function collections:reward_messages/combat/spider_eye/4
execute if score @s C_SpidereyeL matches 4 run function collections:reward_messages/combat/spider_eye/5
execute if score @s C_SpidereyeL matches 5 run function collections:reward_messages/combat/spider_eye/6
execute if score @s C_SpidereyeL matches 6 run function collections:reward_messages/combat/spider_eye/7
execute if score @s C_SpidereyeL matches 7 run function collections:reward_messages/combat/spider_eye/8
execute if score @s C_SpidereyeL matches 8 run function collections:reward_messages/combat/spider_eye/9
scoreboard players add @s C_SpidereyeL 1
scoreboard players add @s C_SpidereyeNL 1
execute if score @s C_Spidereye >= @s C_SpidereyeN unless score @s C_SpidereyeL matches 9.. run function collections:update_collections/combat/spider_eye/levelup
#------------------------------------------#