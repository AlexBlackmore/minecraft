tellraw @s[advancements={skyblock:travel_scrolls/howling_caves=true}] ["",{"text":"Teleporting to The Park...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/howling_caves=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/howling_caves=true},gamemode=survival]
execute in skyblock:the_park run tp @s[advancements={skyblock:travel_scrolls/howling_caves=true}] -277.5 82 -13.5 90 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:the_park run tp @s -277.5 82 -13.5 90 0
xp add @s -1 points