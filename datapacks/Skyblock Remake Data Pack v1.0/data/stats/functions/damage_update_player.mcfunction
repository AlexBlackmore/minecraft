#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
execute unless entity @s[scores={P_ManualDmgType=1..}] at @s run function stats:damage_update/to_player
execute if entity @s[scores={P_ManualDmgType=1}] at @s run function stats:manual_damage/apply/normal_player
execute if entity @s[scores={P_ManualDmgType=2}] at @s run function stats:manual_damage/apply/true_damage
scoreboard players set @s[scores={PlayerHP=..0}] PlayerHP 0
#---------------DAMAGE ICON----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
execute at @s run summon minecraft:armor_stand ^0.5 ^1 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Timeout","1SecTimeout","DamageDealt","DamageDealtNew"],CustomNameVisible:1b,CustomName:'{"text":"","color":"gray","italic":false}'}
tag @s add EntitySelf
execute as @e[tag=DamageDealtNew,limit=1,sort=nearest] at @s run function stats:damage_icon
tag @s remove EntitySelf
execute in minecraft:overworld run setblock 29999978 1 29832 air
#------------------RESET-------------------#
scoreboard players reset @s P_IconColour
scoreboard players reset @s P_ManualDmgType
effect give @s minecraft:instant_health 1 100 true
#------------------------------------------#