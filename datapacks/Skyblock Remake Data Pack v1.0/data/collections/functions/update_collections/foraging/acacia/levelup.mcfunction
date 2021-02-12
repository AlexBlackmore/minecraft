#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_AcaciaL matches -1 run function collections:reward_messages/foraging/acacia/0
execute if score @s C_AcaciaL matches 0 run function collections:reward_messages/foraging/acacia/1
execute if score @s C_AcaciaL matches 1 run function collections:reward_messages/foraging/acacia/2
execute if score @s C_AcaciaL matches 2 run function collections:reward_messages/foraging/acacia/3
execute if score @s C_AcaciaL matches 3 run function collections:reward_messages/foraging/acacia/4
execute if score @s C_AcaciaL matches 4 run function collections:reward_messages/foraging/acacia/5
execute if score @s C_AcaciaL matches 5 run function collections:reward_messages/foraging/acacia/6
execute if score @s C_AcaciaL matches 6 run function collections:reward_messages/foraging/acacia/7
execute if score @s C_AcaciaL matches 7 run function collections:reward_messages/foraging/acacia/8
execute if score @s C_AcaciaL matches 8 run function collections:reward_messages/foraging/acacia/9
scoreboard players add @s C_AcaciaL 1
scoreboard players add @s C_AcaciaNL 1
execute if score @s C_Acacia >= @s C_AcaciaN unless score @s C_AcaciaL matches 9.. run function collections:update_collections/foraging/acacia/levelup
#------------------------------------------#