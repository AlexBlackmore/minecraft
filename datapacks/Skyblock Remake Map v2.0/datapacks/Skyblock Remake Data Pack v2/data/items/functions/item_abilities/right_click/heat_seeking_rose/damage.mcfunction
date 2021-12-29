#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#apply damage to nearby mobs
playsound entity.experience_orb.pickup player @p
scoreboard players operation @s ApplyDamage += $FlowerDamage Temp
scoreboard players add @e[tag=flower_of_truth_2,limit=1] EnemyTruth 1
execute as @e[tag=flower_of_truth_2] if entity @s[scores={EnemyTruth=3..}] run function items:item_abilities/right_click/heat_seeking_rose/reset
execute unless entity @e[distance=..8,tag=!NPC,type=!#stats:show_hp,tag=!been_target] run function items:item_abilities/right_click/heat_seeking_rose/reset


