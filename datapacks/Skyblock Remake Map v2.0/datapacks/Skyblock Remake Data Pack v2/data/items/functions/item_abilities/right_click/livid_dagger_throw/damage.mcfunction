#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty


#calculate damage
tag @s add TakenCrit
scoreboard players operation @s ApplyDamage += $LividDamage Temp
scoreboard players set $LividDamage Temp 0
tag @p remove TargetEntity
tag @p[tag=livid_dagger_caster] remove livid_dagger_caster



