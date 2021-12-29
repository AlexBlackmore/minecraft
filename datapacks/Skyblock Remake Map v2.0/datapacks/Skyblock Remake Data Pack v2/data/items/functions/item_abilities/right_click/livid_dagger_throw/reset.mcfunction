#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#make ready for next use
item replace entity @e[tag=livid_dagger_stand_2] weapon.mainhand with minecraft:air
execute as @e[distance=..3,type=!player,tag=!NPC,type=!#stats:show_hp] at @s run function items:item_abilities/right_click/livid_dagger_throw/damage 
kill @e[tag=livid_dagger_stand_2,limit=1]
kill @e[tag=livid_dagger_direction_2]