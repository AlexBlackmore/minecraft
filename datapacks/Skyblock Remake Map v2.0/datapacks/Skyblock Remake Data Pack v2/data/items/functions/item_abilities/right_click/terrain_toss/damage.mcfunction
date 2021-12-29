#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#do damage and reset
tp @s ~ ~-1 ~
particle explosion ~ ~ ~ 2 0.3 2 0 4 normal
playsound minecraft:entity.iron_golem.death neutral @a[distance=..20] ~ ~ ~ 1 1
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5,tag=!toss_block] ApplyDamage = $AbilityDamageOutput Temp
kill @e[tag=toss_block,limit=36,sort=nearest]
