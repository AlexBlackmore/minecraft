tellraw @s[advancements={skyblock:travel_scrolls/dwarven_mines=true}] ["",{"text":"Teleporting to Dwarven Mines...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/dwarven_mines=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/dwarven_mines=true},gamemode=survival]
execute in skyblock:dwarven_mines run tp @s[advancements={skyblock:travel_scrolls/dwarven_mines=true}] -85.5 200 -123.5 -90 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:dwarven_mines run tp @s -85.5 200 -123.5 -90 0
xp add @s -1 points