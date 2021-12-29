#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#look for stop
execute as @e[tag=livid_dagger_stand_2] at @s unless block ~ ~1 ~ air run function items:item_abilities/right_click/livid_dagger_throw/reset
execute as @e[tag=livid_dagger_stand_2] at @s if entity @e[distance=..3,type=!item,tag=!NPC,type=!player,type=!#stats:show_hp] run function items:item_abilities/right_click/livid_dagger_throw/reset

#move sword
execute as @e[tag=livid_dagger_stand_2,tag=livid_dagger_direction_done,limit=1] at @s run tp @s ^ ^ ^-2 facing entity @e[tag=livid_dagger_direction_2,limit=1]

#rotate arm
execute store result entity @e[tag=livid_dagger_stand_2,limit=1] Pose.RightArm[0] float 1 run scoreboard players get $LividArmRot LividArmRot
scoreboard players add @e[tag=livid_dagger_stand_2] livid_arm_rot 18
scoreboard players add $LividArmRot LividArmRot 18
execute if entity @e[tag=livid_dagger_stand_2,limit=1,scores={livid_arm_rot=360..}] run scoreboard players set $LividArmRot LividArmRot 0
execute if entity @e[tag=livid_dagger_stand_2,limit=1,scores={livid_arm_rot=360..}] run scoreboard players set @e[tag=livid_dagger_stand_2,limit=1,scores={livid_arm_rot=360..}] livid_arm_rot 0

#particles
execute as @e[tag=livid_dagger_stand_2] at @s anchored feet run particle crit ^ ^ ^2 0.1 0.1 0.1 0.1 3 