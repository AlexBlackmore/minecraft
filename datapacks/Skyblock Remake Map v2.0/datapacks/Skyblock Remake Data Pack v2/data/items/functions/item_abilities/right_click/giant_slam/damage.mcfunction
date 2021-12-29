#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#apply damage
execute as @e[tag=!NPC,type=!#stats:show_hp,distance=..5] run particle heart ~ ~ ~ 0.5 0.5 0.5 0 10
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = $AbilityDamageOutput Temp