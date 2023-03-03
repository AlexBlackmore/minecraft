execute at @e[tag=woods_race,limit=1,sort=nearest] run tp @s ~ ~ ~
execute at @s run summon minecraft:experience_bottle ~ ~ ~
execute at @s run loot spawn ~ ~ ~ loot skyblock:gameplay/woods_race


execute at @s if entity @e[type=item,distance=0..2,nbt={Age:0s,Item:{tag:{Name:"Polished Pebble"}}}] run tag @s add polished_pebble
tellraw @s[tag=polished_pebble] ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> Not bad, "},{"selector":"@s","color":"white"},{"text":". I hope you can get better than this! Here's a Polished Pebble. I found it laying around...","color":"white"}]
playsound minecraft:entity.villager.no player @s[tag=polished_pebble]

execute at @s if entity @e[type=item,distance=0..2,nbt={Age:0s,Item:{tag:{Name:"Hunter Knife"}}}] run tag @s add hunter_knife
tellraw @s[tag=hunter_knife] ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> You're getting much faster! Use my ","color":"white"},{"text":"Hunter Knife","color":"yellow"},{"text":". Holding it somehow makes you go faster."}]
playsound minecraft:entity.villager.trade player @s[tag=hunter_knife]

execute at @s if entity @e[type=item,distance=0..2,nbt={Age:0s,Item:{tag:{Name:"Wolf Paw"}}}] run tag @s add wolf_paw
tellraw @s[tag=wolf_paw] ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> Now we're cooking! You're getting close to my record! Here's a trinket I've found in the caverns behind the waterfall.","color":"white"}]
playsound minecraft:entity.villager.yes player @s[tag=wolf_paw]

execute at @s if entity @e[type=item,distance=0..2,nbt={Age:0s,Item:{tag:{Name:"Silky Lichen"}}}] run tag @s add silky_lichen
tellraw @s[tag=silky_lichen] ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> You did it! Congratulations, ","color":"white"},{"selector":"@s","color":"white"},{"text":". You are now faster than ","color":"white"},{"text":"Gustave","color":"green"},{"text":"! I've been racing this island so fast that some bark from the trees snatched right off! Here's a rare piece of ","color":"white"},{"text":"Silky Lichen","color":"aqua"},{"text":". Maybe you can do something with it. I heard this lichen could improve some weapons!","color":"white"}]
playsound minecraft:entity.villager.celebrate player @s[tag=silky_lichen]


tag @s remove polished_pebble
tag @s remove hunter_knife 
tag @s remove wolf_paw 
tag @s remove silky_lichen