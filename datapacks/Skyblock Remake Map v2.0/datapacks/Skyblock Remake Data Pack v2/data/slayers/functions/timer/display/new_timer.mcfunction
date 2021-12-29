#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
data modify entity @s CustomName set value '"'
data modify entity @s CustomNameVisible set value 1b

setblock 29999978 1 29833 oak_sign
data merge block 29999978 1 29833 {Text1:'["",{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeMin"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeSec"},"color":"red"}]'}
data modify entity @s CustomName set from block 29999978 1 29833 Text1
setblock 29999978 1 29833 air
tag @s remove NewTimeDisplay