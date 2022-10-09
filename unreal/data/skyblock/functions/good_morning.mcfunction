scoreboard players set @s dummy 1000
execute store result score @s hour run time query daytime
scoreboard players operation @s hour /= @s dummy
scoreboard players set @s dummy 24
scoreboard players operation @s hour %= @s dummy

scoreboard players set @s dummy 31
execute store result score @s day run time query day
scoreboard players operation @s day %= @s dummy
scoreboard players add @s day 1

scoreboard players set @s dummy 31
execute store result score @s month run time query day
scoreboard players operation @s month /= @s dummy
scoreboard players set @s dummy 12
scoreboard players operation @s month %= @s dummy

scoreboard players set @s dummy 372
execute store result score @s year run time query day
scoreboard players operation @s year /= @s dummy
scoreboard players add @s year 1

tellraw @s ["",{"text":"☀ ","color":"yellow"},{"text":"Good morning, ","color":"white"},{"selector":"@s"},{"text":"!"}]

#SPRING
execute if score @s month matches 0 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Early Spring, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 1 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Spring, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 2 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Late Spring, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]

#SUMMER
execute if score @s month matches 3 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Early Summer, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 4 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Summer, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 5 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Late Summer, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]

#AUTUMN
execute if score @s month matches 6 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Early Autumn, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 7 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Autumn, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 8 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Late Autumn, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]

#WINTER
execute if score @s month matches 9 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Early Winter, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 10 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Winter, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]
execute if score @s month matches 11 run tellraw @s ["",{"text":"Today is Day "},{"score":{"name":"*","objective":"day"}},{"text":" of Late Winter, Year "},{"score":{"name":"*","objective":"year"}},{"text":"."}]


#EVENTS

#Election
execute if score @s month matches 3 if score @s day matches 27 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":" Mayor Election ","color":"green"},{"score":{"name":"*","objective":"year","color":"green"}},{"text":"!","color":"green"}]
execute if score @s month matches 3 if score @s day matches 27 run function skyblock:events/election

#Travelling Zoo
execute if score @s month matches 4 if score @s day matches 1 run tellraw @s ["",{"text":"Oringo","color":"green"},{"text":" has bright his ","color":"yellow"},{"text":"Travelling Zoo","color":"green"},{"text":" shop in town! Acquire ","color":"yellow"},{"text":"exclusive pets","color":"gold"},{"text":"! Visit ","color":"yellow"},{"text":"Oringo","color":"yellow"},{"text":" at the hub plaza, near the Colosseum!","color":"yellow"}]
execute if score @s month matches 10 if score @s day matches 1 run tellraw @s ["",{"text":"Oringo","color":"green"},{"text":" has bright his ","color":"yellow"},{"text":"Travelling Zoo","color":"green"},{"text":" shop in town! Acquire ","color":"yellow"},{"text":"exclusive pets","color":"gold"},{"text":"! Visit ","color":"yellow"},{"text":"Oringo","color":"yellow"},{"text":" at the hub plaza, near the Colosseum!","color":"yellow"}]
execute if score @s month matches 4 if score @s day matches 1 run advancement grant @s only skyblock:events/travelling_zoo
execute if score @s month matches 10 if score @s day matches 1 run advancement grant @s only skyblock:events/travelling_zoo
execute if score @s month matches 4 if score @s day matches 1 at @e[type=minecraft:armor_stand,tag=event_stand] as @e[type=minecraft:villager,tag=oringo] run tp @s ~ ~ ~
execute if score @s month matches 10 if score @s day matches 1 at @e[type=minecraft:armor_stand,tag=event_stand] as @e[type=minecraft:villager,tag=oringo] run tp @s ~ ~ ~

execute if score @s month matches 4 if score @s day matches 4 run advancement revoke @s only skyblock:events/travelling_zoo
execute if score @s month matches 10 if score @s day matches 4 run advancement revoke @s only skyblock:events/travelling_zoo
execute if score @s month matches 4 if score @s day matches 4 at @e[type=minecraft:armor_stand,tag=event_reserve] as @e[type=minecraft:villager,tag=oringo] run tp @s ~ ~ ~
execute if score @s month matches 10 if score @s day matches 4 at @e[type=minecraft:armor_stand,tag=event_reserve] as @e[type=minecraft:villager,tag=oringo] run tp @s ~ ~ ~

#Spooky Festival
execute if score @s month matches 8 if score @s day matches 28 run tellraw @s ["",{"text":"The ","color":"yellow"},{"text":"Spooky Festival","color":"gold"},{"text":" event is starting in ","color":"yellow"},{"text":"1","color":"aqua"},{"text":" day!","color":"yellow"}]
execute if score @s month matches 8 if score @s day matches 28 at @e[type=minecraft:armor_stand,tag=event_stand] as @e[type=minecraft:villager,tag=fear_mongerer] run tp @s ~ ~ ~

execute if score @s month matches 8 if score @s day matches 29 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Spooky Festival","color":"gold"}]
execute if score @s month matches 8 if score @s day matches 29 run tellraw @s ["",{"text":"The event is active! Kill mobs to collect Candy, which can be traded in for cool items in the Village!","color":"yellow"}]
execute if score @s month matches 8 if score @s day matches 29 run advancement grant @s only skyblock:events/spooky_festival

execute if score @s month matches 9 if score @s day matches 1 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Spooky Festival","color":"gold"}]
execute if score @s month matches 9 if score @s day matches 1 run tellraw @s ["",{"text":"The event has ended! The Fear Mongerer is selling cool items in the Hub for a limited time!","color":"yellow"}]
execute if score @s month matches 9 if score @s day matches 1 run advancement revoke @s only skyblock:events/spooky_festival
execute if score @s month matches 9 if score @s day matches 2 at @e[type=minecraft:armor_stand,tag=event_reserve] as @e[type=minecraft:villager,tag=fear_mongerer] run tp @s ~ ~ ~

#Season of Jerry
execute if score @s month matches 11 if score @s day matches 24 run advancement grant @s only skyblock:events/season_of_jerry
execute if score @s month matches 11 if score @s day matches 24 at @e[type=minecraft:armor_stand,tag=event_stand] as @e[type=minecraft:villager,tag=jerry,tag=winter] run tp @s ~ ~ ~

#New Year Celebration
execute if score @s month matches 11 if score @s day matches 28 run tellraw @s ["",{"text":"The ","color":"yellow"},{"text":"New Year's Celebration","color":"light_purple"},{"text":" event is starting in ","color":"yellow"},{"text":"1","color":"aqua"},{"text":" day!","color":"yellow"}]
execute if score @s month matches 11 if score @s day matches 29 run tellraw @s ["",{"text":"Event:","color":"yellow","bold":true},{"text":" New Year's Celebration! ","color":"light_purple"}]
execute if score @s month matches 11 if score @s day matches 29 run tellraw @s ["",{"text":"Everyone is having a party in the ","color":"yellow"},{"text":"Village","color":"aqua"},{"text":"! Go there and talk to the ","color":"yellow"},{"text":"Baker","color":"aqua"},{"text":" to get your ","color":"yellow"},{"text":"New Year's Cake","color":"red"},{"text":"!","color":"yellow"}]
execute if score @s month matches 11 if score @s day matches 29 run advancement grant @s only skyblock:events/new_year_celebration
execute if score @s month matches 11 if score @s day matches 29 at @e[type=minecraft:armor_stand,tag=event_reserve] as @e[type=minecraft:villager,tag=jerry,tag=winter] run tp @s ~ ~ ~
execute if score @s month matches 11 if score @s day matches 29 at @e[type=minecraft:armor_stand,tag=event_stand] as @e[type=minecraft:villager,tag=baker] run tp @s ~ ~ ~

execute if score @s month matches 0 if score @s day matches 1 run tellraw @s ["",{"text":"Happy New Year to Everyone! ","color":"yellow"}]
execute if score @s month matches 0 if score @s day matches 1 run advancement revoke @s only skyblock:events/season_of_jerry
execute if score @s month matches 0 if score @s day matches 1 run advancement revoke @s only skyblock:events/new_year_celebration
execute if score @s month matches 0 if score @s day matches 1 at @e[type=minecraft:armor_stand,tag=event_reserve] as @e[type=minecraft:villager,tag=baker] run tp @s ~ ~ ~

#Fishing Festival
execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 1 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Fishing Festival","color":"aqua"}]
execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 1 run tellraw @s ["",{"text":"The festival is now underway! Break out your fishing rods and watch out for sharks!","color":"yellow"}]
execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 1 run advancement grant @s only skyblock:events/fishing_festival

execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 4 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Fishing Festival","color":"aqua"}]
execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 4 run tellraw @s ["",{"text":"The festival has concluded! Time to dry off and repair your rods!","color":"yellow"}]
execute if score @s[advancements={skyblock:events/election/marina=true}] day matches 4 run advancement revoke @s only skyblock:events/fishing_festival

#Mining Festival
execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 7 if score @s day matches 1 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Mining Festival","color":"green"}]
execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 7 if score @s day matches 1 run tellraw @s ["",{"text":"The festival is now underway!","color":"yellow"}]
execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 7 if score @s day matches 1 run advancement grant @s only skyblock:events/mining_fiesta

execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 8 if score @s day matches 1 run tellraw @s ["",{"text":"Event: ","color":"yellow","bold":true},{"text":"Fishing Festival","color":"aqua"}]
execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 8 if score @s day matches 1 run tellraw @s ["",{"text":"The festival has concluded!","color":"yellow"}]
execute if score @s[advancements={skyblock:events/election/cole=true}] month matches 8 if score @s day matches 1 run advancement revoke @s only skyblock:events/mining_fiesta
