#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
scoreboard players operation @s PlayerID = @e[tag=SvenPackmaster,sort=nearest,limit=1] PlayerID
data modify entity @s AngerTime set value 10000
data modify entity @s AngryAt set from entity @e[tag=SvenPackmaster,sort=nearest,limit=1] AngryAt
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get $Health/10 Temp
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value 15.0
tag @s add DealTrueDamage
tag @s remove NewPup