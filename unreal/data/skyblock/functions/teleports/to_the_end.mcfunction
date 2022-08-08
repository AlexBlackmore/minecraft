tellraw @s[advancements={skyblock:travel_scrolls/the_end=true}] ["",{"text":"Teleporting to The End...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/the_end=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/the_end=true},gamemode=survival]
execute in skyblock:the_end run tp @s[advancements={skyblock:travel_scrolls/the_end=true}] 168.0 101 1.0 90 0
xp add @s[advancements={skyblock:travel_scrolls/the_end=true}] -1 points