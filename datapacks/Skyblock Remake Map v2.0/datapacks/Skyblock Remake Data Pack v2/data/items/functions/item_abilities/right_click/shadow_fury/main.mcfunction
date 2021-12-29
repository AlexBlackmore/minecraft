#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty


#reset old targets
execute as @e[tag=shadow_target] run tag @s remove shadow_target
execute as @e[tag=shadow_current_target] run tag @s remove shadow_current_target



#run attack cycle
tag @s add shadow_caster
scoreboard players set @s attack_shadow 5
tag @e[distance=..12,limit=5,tag=!NPC,type=!player,type=!#stats:show_hp] add shadow_target
schedule function items:item_abilities/right_click/shadow_fury/attack_cycle 3t