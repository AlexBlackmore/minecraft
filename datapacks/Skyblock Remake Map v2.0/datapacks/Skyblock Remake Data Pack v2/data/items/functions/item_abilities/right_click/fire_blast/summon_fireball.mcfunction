#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------SETUP------------------#
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {NoGravity:1b,Tags:["2SecTimeout","Timeout","Fireblast","Motion_target"],ExplosionPower:0b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,Tags:["2SecTimeout","Timeout","FireblastStand","NewFireblastStand"]}]}

execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage
scoreboard players operation @e[tag=NewFireblastStand,sort=nearest,limit=1] I_AbilDmgStore = $AbilityDamageOutput Temp
tag @e remove NewFireblastStand

scoreboard players set Global Motion_speed 300
execute as @e[type=fireball,tag=Motion_target] at @s rotated as @p run function skyblock:motion/motion_1
#------------------------------------------#