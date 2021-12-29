#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#set a armor stand on the block the player is looking
execute if entity @e[tag=flay_distance_limit,limit=1,distance=..20.6] if block ^ ^ ^0.3 air positioned ^ ^ ^0.3 run function items:item_abilities/right_click/soul_whip_flay/raycast
execute unless block ^ ^ ^0.3 air positioned ^ ^ ^-0.3 run summon armor_stand ~ ~ ~ {Tags:["flay_target"],NoGravity:1b,Invisible:1b}
execute if entity @e[tag=flay_distance_limit,limit=1,distance=20.6..] positioned ^ ^ ^-0.3 run summon armor_stand ~ ~ ~ {Tags:["flay_target"],NoGravity:1b,Invisible:1b}
