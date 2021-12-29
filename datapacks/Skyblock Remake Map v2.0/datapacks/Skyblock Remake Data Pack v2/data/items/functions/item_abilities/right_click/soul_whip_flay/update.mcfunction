#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#if there is a block below armor stand start reset
execute as @e[tag=flay_bolt] at @s unless block ~ ~-0.1 ~ air run function items:item_abilities/right_click/soul_whip_flay/damage

#if the whip hits a mob reset/do damage
execute as @e[tag=flay_bolt] at @s if entity @e[tag=!NPC,type=!#stats:show_hp,distance=..3] run function items:item_abilities/right_click/soul_whip_flay/damage
execute as @e[tag=flay_bolt] at @s run function items:item_abilities/right_click/soul_whip_flay/summon_particles
