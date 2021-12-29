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
#--------------REMOVE HEALTH---------------#
function stats:calculate/mob_health_after_damage
#------------------------------------------#