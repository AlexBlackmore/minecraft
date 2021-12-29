#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#calculate damage
scoreboard players set $SoulWhipDamage Temp 0
tag @p[sort=nearest,limit=1] add TargetEntity
execute as @p[sort=nearest,limit=1] run function stats:calculate/weapon_damage
scoreboard players operation $SoulWhipDamage Temp += $DamageOutput Temp
tag @p[sort=nearest,limit=1] remove TargetEntity

#apply damage to mob
execute as @e[tag=flay_bolt] at @s as @e[tag=!NPC,type=!#stats:show_hp,distance=..3,type=!player] run scoreboard players operation @s ApplyDamage += $SoulWhipDamage Temp

#reset
kill @e[tag=flay_distance_limit] 
kill @e[tag=flay_bolt]
