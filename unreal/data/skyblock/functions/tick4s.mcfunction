effect give @e[tag=invisible] minecraft:invisibility 15 0 true

#Dwarven Mines The Mist
execute at @e[tag=ghost] as @p[distance=0..5] unless data entity @s ActiveEffects[{Id:7}] run summon minecraft:area_effect_cloud ~ ~ ~ {Potion:"minecraft:strong_harming",Duration:80,Radius:4,Color:16777215}


function skyblock:tick4s_accessories
function skyblock:tick4s_armor