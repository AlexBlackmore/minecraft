#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
execute as @e[type=#stats:arrow_or_player,sort=nearest,limit=1,tag=!inGround] if entity @s[type=player] run tag @p[scores={PlayerAttacked=1..},distance=..7,sort=nearest,limit=1] add TargetEntity
execute as @e[type=#stats:arrow_or_player,sort=nearest,limit=1,tag=!inGround] unless entity @s[type=player] run tag @e[type=arrow,tag=!inGround,distance=..10,sort=nearest,limit=1] add TargetEntity
#---------------SET HEALTH-----------------#
scoreboard players set @s P_IconColour 0
execute unless entity @e[tag=TargetEntity,distance=..10] run function stats:damage_update/to_mob_from_environment
execute if entity @e[tag=TargetEntity,distance=..10] run function stats:damage_update/to_mob_from_player
#-----------------DISPLAY------------------#
scoreboard players set @s[scores={P_Health=..-1}] P_Health 0

function stats:update_mob_name
#---------------DAMAGE ICON----------------#
execute if score $DamageOutput Temp matches 1.. at @s rotated as @p run summon minecraft:armor_stand ^ ^1 ^-1.5 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Timeout","1SecTimeout","DamageDealt","DamageDealtNew"],CustomNameVisible:1b,CustomName:'{"text":"","color":"gray","italic":false}'}
tag @s add EntitySelf
execute if entity @s[tag=TakenCrit] as @e[tag=DamageDealtNew,limit=1,sort=nearest] at @s run function stats:damage_icon/crit
execute unless entity @s[tag=TakenCrit] as @e[tag=DamageDealtNew,limit=1,sort=nearest] at @s run function stats:damage_icon
tag @s remove EntitySelf
#--------------SPECIAL CASES---------------#
execute if entity @s[tag=DragonGateHitbox] run function public_islands:the_end/main_sequence/punch_gate
#----------------RESETTING-----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute if entity @s[scores={P_Health=..0},tag=!DragonGateHitbox] at @s run function stats:kill
execute if entity @s[type=#enchanting:checks/is_undead] run effect give @s minecraft:instant_damage 1 250 true
execute if entity @s[type=!#enchanting:checks/is_undead] run effect give @s minecraft:instant_health 1 250 true

tag @e[tag=TargetEntity,type=arrow,tag=PiercingEnchant] add PiercingSecondary
kill @e[tag=TargetEntity,type=arrow,tag=!PiercingEnchant]
tag @e remove TargetEntity

scoreboard players reset @s P_IconColour
tag @s remove DamageFromPlayer
tag @s remove TakenCrit
tag @s add PrimaryDamage
#------------------------------------------#