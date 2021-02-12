#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GunpowderL matches -1 run function collections:reward_messages/combat/gunpowder/0
execute if score @s C_GunpowderL matches 0 run function collections:reward_messages/combat/gunpowder/1
execute if score @s C_GunpowderL matches 1 run function collections:reward_messages/combat/gunpowder/2
execute if score @s C_GunpowderL matches 2 run function collections:reward_messages/combat/gunpowder/3
execute if score @s C_GunpowderL matches 3 run function collections:reward_messages/combat/gunpowder/4
execute if score @s C_GunpowderL matches 4 run function collections:reward_messages/combat/gunpowder/5
execute if score @s C_GunpowderL matches 5 run function collections:reward_messages/combat/gunpowder/6
execute if score @s C_GunpowderL matches 6 run function collections:reward_messages/combat/gunpowder/7
execute if score @s C_GunpowderL matches 7 run function collections:reward_messages/combat/gunpowder/8
execute if score @s C_GunpowderL matches 8 run function collections:reward_messages/combat/gunpowder/9
scoreboard players add @s C_GunpowderL 1
scoreboard players add @s C_GunpowderNL 1
execute if score @s C_Gunpowder >= @s C_GunpowderN unless score @s C_GunpowderL matches 9.. run function collections:update_collections/combat/gunpowder/levelup
#------------------------------------------#