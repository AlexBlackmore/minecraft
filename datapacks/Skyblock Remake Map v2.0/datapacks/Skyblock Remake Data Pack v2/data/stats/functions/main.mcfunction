#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------HEALTH------------------#
execute as @a run function stats:player_stat_main
execute as @a run function stats:actionbar
#-------------FALL DAMAGE CALC-------------#
execute as @a[scores={Fall=1..}] run function stats:fall_damage/test_fall
#-----------------NEW MOB------------------#
execute as @e[type=!#stats:show_hp,tag=!NPC,tag=!HasHealthDisplay,tag=!NoHealthBar] run function stats:new_mob
#------------------ARROWS------------------#
execute as @e[type=minecraft:arrow,tag=!GotStats] at @s run function stats:arrow/give_stats
execute as @e[type=arrow,nbt={inGround:1b},tag=!Timeout] run function stats:arrow/hit_ground
#--------------DAMAGE DEALING--------------#
execute as @e[scores={ApplyDamage=1..}] run function stats:manual_damage/init/normal
execute as @e[scores={ApplyTrueDamage=1..}] run function stats:manual_damage/init/true_damage
execute as @e[type=!#stats:show_hp,predicate=stats:hurt_time_10,tag=HasDamageUpdate] at @s run function stats:damage_update_mob
execute as @e[type=!#stats:show_hp,predicate=stats:hurt_time_9,tag=!PrimaryDamage,tag=HasHealthDisplay] at @s run function stats:damage_update_mob
tag @e[type=!#stats:show_hp,predicate=stats:hurt_time_1,tag=HasHealthDisplay] remove PrimaryDamage
scoreboard players reset @a PlayerAttacked
#-----------------FEROCITY-----------------#
execute as @e[type=!#stats:show_hp,tag=HasHealthDisplay,tag=FeroStrike] at @s at @e[tag=FeroStrikePlayer,distance=..10,limit=1] run function stats:ferocity/timer
#------------------------------------------#