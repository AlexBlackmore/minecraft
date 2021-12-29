#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#check for targets to Damage
execute as @e[distance=..0.4,tag=flower_target] run tag @s add been_target
execute as @e[distance=..0.4,tag=flower_target] run function items:item_abilities/right_click/heat_seeking_rose/damage
execute as @e[distance=..0.4,tag=flower_target] run tag @s remove flower_target
