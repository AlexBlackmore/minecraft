scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add luck dummy "Luck"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 1000

execute store result score @s luck run attribute @s minecraft:generic.luck get
scoreboard players operation @e[tag=rng] dummy -= @s luck

execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=..18}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> You did it! Congratulations, ","color":"white"},{"selector":"@s","color":"white"},{"text":". You are now faster than ","color":"white"},{"text":"Gustave","color":"green"},{"text":"! I've been racing this island so fast that some bark from the trees snatched right off! Here's a rare piece of ","color":"white"},{"text":"Silky Lichen","color":"aqua"},{"text":". Maybe you can do something with it. I heard this lichen could improve some weapons!","color":"white"}]
execute if entity @e[tag=rng,scores={random=..18}] run loot give @s loot skyblock:items/silky_lichen
execute if entity @e[tag=rng,scores={random=..18}] run playsound minecraft:entity.villager.celebrate player @s

execute if entity @e[tag=rng,scores={random=19..50}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> Now we're cooking! You're getting close to my record! Here's a trinket I've found in the caverns behind the waterfall.","color":"white"}]
execute if entity @e[tag=rng,scores={random=19..50}] run loot give @s loot skyblock:items/accessories/wolf_paw
execute if entity @e[tag=rng,scores={random=19..50}] run playsound minecraft:entity.villager.yes player @s

execute if entity @e[tag=rng,scores={random=51..110}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> You're getting much faster! Use my ","color":"white"},{"text":"Hunter Knife","color":"yellow"},{"text":". Holding it somehow makes you go faster."}]
execute if entity @e[tag=rng,scores={random=51..110}] run loot give @s loot skyblock:items/swords/hunter_knife
execute if entity @e[tag=rng,scores={random=51..110}] run playsound minecraft:entity.villager.trade player @s

execute if entity @e[tag=rng,scores={random=111..230}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> Not bad, "},{"selector":"@s","color":"white"},{"text":". I hope you can get better than this! Here's a Polished Pebble. I found it laying around...","color":"white"}]
execute if entity @e[tag=rng,scores={random=111..230}] run loot give @s loot skyblock:items/polished_pebble
execute if entity @e[tag=rng,scores={random=111..230}] run playsound minecraft:entity.villager.no player @s

execute if entity @e[tag=rng,scores={random=231..}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Gustave","color":"green"},{"text":"> It's a great day for a run! Keep it up!","color":"white"}]

kill @e[tag=rng]
advancement revoke @s only skyblock:commands/npcs/woods_race

tp @p -386 89 51
execute at @s run summon experience_bottle ~ ~ ~
