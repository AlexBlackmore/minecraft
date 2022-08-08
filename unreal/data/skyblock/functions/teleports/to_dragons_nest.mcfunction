tellraw @s[advancements={skyblock:travel_scrolls/dragons_nest=true}] ["",{"text":"Teleporting to Dragon's Nest...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/dragons_nest=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/dragons_nest=false},gamemode=survival]
execute in skyblock:the_end run tp @s[advancements={skyblock:travel_scrolls/dragons_nest=false}] 68 22 0 90 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:the_end run tp @s 68 22 0 90 0
xp add @s -1 points