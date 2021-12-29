#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.0
scoreboard players operation $Health/10 Temp = @s DisplayMaxHealth
scoreboard players operation $Health/10 Temp /= c10 Constant
playsound entity.wolf.howl hostile @a[distance=..30] ~ ~ ~ 1 1.5 1
scoreboard players set @s S_SvenPupTimer 81
tag @s add SpawnPup
tag @s add SvenCalling
execute as @e[tag=SlayerTimeDisplay,sort=nearest,limit=1] at @s run function slayers:timer/display/update