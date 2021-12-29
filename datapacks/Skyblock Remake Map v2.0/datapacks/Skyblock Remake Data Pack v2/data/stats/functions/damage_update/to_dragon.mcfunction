#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------SOUND IF PROJECTILE HIT----------#
execute as @a if score @s PlayerID = @e[sort=nearest,limit=1,tag=TargetEntity,type=#stats:arrow_or_hook] PlayerID at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 1
#------------------SETUP-------------------#
tag @s add DamageFromPlayer
tag @s remove AimingTarget
#------------CALCULATE DAMAGE--------------#
function stats:calculate/weapon_damage
scoreboard players operation $DamageOutput Temp *= DragonDamageMultiplier Setting
execute if score $DamageOutput Temp matches ..-1 run scoreboard players set $DamageOutput Temp 2147483647
#-------------REMOVE HEALTH----------------#
execute if entity @e[type=ender_dragon,name="Protector Dragon"] run scoreboard players operation $DamageOutput Temp /= c2 Constant
execute if entity @e[type=ender_dragon,name="Superior Dragon"] if predicate minecraft:random_chance/20_percent run scoreboard players operation $DamageOutput Temp /= c2 Constant

scoreboard players operation @s P_Health -= $DamageOutput Temp
execute if score @s P_Health matches ..-1 run scoreboard players operation $DamageOutput Temp += @s P_Health
execute if score @s P_Health matches ..-1 run scoreboard players set @s P_Health 0
#------------ADD PLAYER DAMAGE-------------#
scoreboard players operation @p[tag=TargetEntity] End_DragDamage += $DamageOutput Temp
execute as @a if score @s PlayerID = @e[sort=nearest,limit=1,tag=TargetEntity,type=#stats:arrow_or_hook] PlayerID run scoreboard players operation @s End_DragDamage += $DamageOutput Temp
#---------------DAMAGE ICON----------------#
execute if entity @s[tag=TakenCrit] if score $DamageOutput Temp matches 1.. run summon minecraft:armor_stand ^ ^4 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Timeout","1SecTimeout","DamageDealt","DamageDealtDragNew","DragonCritIcon"],CustomNameVisible:1b,CustomName:'{"text":"E","color":"gray","italic":false}'}
execute if entity @s[tag=!TakenCrit] if score $DamageOutput Temp matches 1.. run summon minecraft:armor_stand ^ ^4 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["Timeout","1SecTimeout","DamageDealt","DamageDealtDragNew"],CustomNameVisible:1b,CustomName:'{"text":"E","color":"gray","italic":false}'}
#----------------RESETTING-----------------#
tag @s remove SetHealthDisplay

tag @e[tag=TargetEntity,type=arrow,tag=PiercingEnchant] add PiercingSecondary
kill @e[tag=TargetEntity,type=arrow,tag=!PiercingEnchant]
tag @e remove TargetEntity

scoreboard players reset @s P_IconColour
tag @s remove DamageFromPlayer
tag @s remove TakenCrit
tag @s add PrimaryDamage
#------------------------------------------#