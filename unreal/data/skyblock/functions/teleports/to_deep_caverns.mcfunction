tellraw @s[advancements={skyblock:travel_scrolls/deep_caverns=true}] ["",{"text":"Teleporting to Deep Caverns...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/deep_caverns=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/deep_caverns=true},gamemode=survival]
execute in skyblock:deep_caverns run tp @s[advancements={skyblock:travel_scrolls/deep_caverns=true}] 100168.0 157 99349.0 -180 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:deep_caverns run tp @s 100168.0 157 99349.0 -180 0
xp add @s -1 points
xp add @s 1 points
