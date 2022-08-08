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
execute if score @s month matches 11 if score @s day matches 24 run tellraw @s ["",{"text":"<Jerry> It's the holiday season in Skyblock and that can only mean one thing... ","color":"white"},{"text":"Jerry's Workshop","color":"red"},{"text":" is under attack! Save the Jerrys' home and ensure all of Skyblock gets to receive ","color":"white"},{"text":"Gifts","color":"green"},{"text":"!","color":"white"}]
execute if score @s month matches 11 if score @s day matches 24 run advancement grant @s only skyblock:travel_scrolls/jerrys_workshop


execute if score @s month matches 11 if score @s day matches 28 run tellraw @s ["",{"text":"The ","color":"white"},{"text":" New Year's Celebration","color":"light_purple"},{"text":" event is starting in ","color":"white"},{"text":"1","color":"aqua"},{"text":" day!","color":"white"}]
execute if score @s month matches 11 if score @s day matches 29 run tellraw @s ["",{"text":"Q","color":"aqua","obfuscated":true,"bold":true},{"text":" Event:","color":"yellow","bold":true},{"text":" New Year's Celebration! ","color":"light_purple"},{"text":"Q","color":"aqua","obfuscated":true,"bold":true},{"text":" Everyone is having a party in the ","color":"white"},{"text":"Village","color":"aqua"},{"text":"! Go there and talk to the Baker to get your ","color":"white"},{"text":"New Year's Cake","color":"red"},{"text":"!","color":"white"}]

execute if score @s month matches 0 if score @s day matches 1 run tellraw @s ["",{"text":"Q","color":"aqua","obfuscated":true,"bold":true},{"text":" Happy New Year to Everyone! ","color":"yellow"},{"text":"Q","color":"aqua","obfuscated":true,"bold":true}]
execute if score @s month matches 0 if score @s day matches 1 run advancement revoke @s only skyblock:travel_scrolls/jerrys_workshop

execute if score @s month matches 3 if score @s day matches 27 run tellraw @s ["",{"text":"Q","color":"light_purple","obfuscated":true,"bold":true},{"text":" Event: ","color":"yellow","bold":true},{"text":" Mayor Election ","color":"white"},{"score":{"name":"*","objective":"year","color":"white"}},{"text":"!","color":"white"},{"text":"Q","color":"light_purple","obfuscated":true,"bold":true}]
