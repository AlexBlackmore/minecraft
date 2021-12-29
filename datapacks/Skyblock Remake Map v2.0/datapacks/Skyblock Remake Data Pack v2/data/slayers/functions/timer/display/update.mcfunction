#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
data modify entity @s CustomName set value '"'
setblock ~ 255 ~ oak_sign
data merge block ~ 255 ~ {Text1:'["",{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeMin"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeSec"},"color":"red"}]'}
data modify entity @s CustomName set from block ~ 255 ~ Text1

execute if entity @e[tag=SvenProtected,tag=!SvenCalling,distance=..5] run data merge block ~ 255 ~ {Text1:'["",{"text":"Protected ","color":"green"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeMin"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeSec"},"color":"red"}]'}
execute if entity @e[tag=SvenProtected,tag=!SvenCalling,distance=..5] run data modify entity @s CustomName set from block ~ 255 ~ Text1

execute if entity @e[tag=SvenCalling,tag=!SvenProtected,distance=..5] run data merge block ~ 255 ~ {Text1:'["",{"text":"Calling the pups! ","color":"aqua"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeMin"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeSec"},"color":"red"}]'}
execute if entity @e[tag=SvenCalling,tag=!SvenProtected,distance=..5] run data modify entity @s CustomName set from block ~ 255 ~ Text1

execute if entity @e[tag=Enrage,distance=..5] run data merge block ~ 255 ~ {Text1:'["",{"text":"MAD ","color":"dark_red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeMin"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@e[tag=Slayer,sort=nearest,limit=1]","objective":"I_SlayerTimeSec"},"color":"red"}]'}
execute if entity @e[tag=Enrage,distance=..5] run data modify entity @s CustomName set from block ~ 255 ~ Text1

setblock ~ 255 ~ air