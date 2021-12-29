#Get Rid of Soup
clear @s minecraft:filled_map 1
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:filled_map"},Age:0s}]
#Play Sounds
stopsound @a[distance=..15] * minecraft:ui.cartography_table.take_result
playsound minecraft:entity.generic.drink master @a[distance=..5]
playsound minecraft:entity.villager.yes master @a[distance=..5]
#Randomize Message
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 3
function skyblock:random/range_lcg
#Play Message
execute unless score @s SoupTrack1 = $Count SoupTrack1 run tellraw @s ["",{"text":"You flight has been extended for ","color":"green"},{"text":"2","color":"red"},{"text":" extra minutes.","color":"green"}]
execute unless score @s SoupTrack2 = $Count SoupTrack2 run tellraw @s ["",{"text":"You flight has been extended for ","color":"green"},{"text":"200","color":"red"},{"text":" extra minutes.","color":"green"}]
execute if score out RandMath matches 1 run tellraw @s {"text":"Hmm... tasty!","italic":true,"color":"yellow"}
execute if score out RandMath matches 2 run tellraw @s {"text":"What was in that soup?","italic":true,"color":"yellow"}
execute if score out RandMath matches 3 run tellraw @s {"text":"I feel like I can fly!","italic":true,"color":"yellow"}
#Nausa Effect
effect give @s minecraft:nausea 4 10 false
#Give More Flight Time
execute unless score @s SoupTrack1 = $Count SoupTrack1 run scoreboard players add @s SoupFlightTime 2400
execute unless score @s SoupTrack2 = $Count SoupTrack2 run scoreboard players add @s SoupFlightTime 240000
