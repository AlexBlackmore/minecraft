tellraw @s[advancements={skyblock:travel_scrolls/gold_mine=true}] ["",{"text":"Teleporting to Gold Mine...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/gold_mine=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/gold_mine=true},gamemode=survival]
execute in skyblock:gold_mine run tp @s[advancements={skyblock:travel_scrolls/gold_mine=true}] -4.5 74 -278.5 -180 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:gold_mine run tp @s -4.5 74 -278.5 -180 0
xp add @s -1 points