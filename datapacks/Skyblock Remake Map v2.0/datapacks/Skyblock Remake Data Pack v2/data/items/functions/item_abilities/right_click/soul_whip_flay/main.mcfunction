#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#set a limit to distance (look at calculate damage to know how)
summon armor_stand ~ ~ ~ {Tags:["flay_distance_limit"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}

#raycast where to go
execute as @s at @s positioned ~ ~1.3 ~ run function items:item_abilities/right_click/soul_whip_flay/raycast

#summon soul whip armor stand
function items:item_abilities/right_click/soul_whip_flay/summon

#give motion to soul whip armor stand
execute as @e[tag=flay_bolt,limit=1,sort=nearest] at @s run function items:item_abilities/right_click/soul_whip_flay/calculate_motion

