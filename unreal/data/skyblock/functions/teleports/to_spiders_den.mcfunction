tellraw @s[advancements={skyblock:travel_scrolls/spiders_den=true}] ["",{"text":"Teleporting to Spider's Den...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/spiders_den=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/spiders_den=true},gamemode=survival]
execute in skyblock:spiders_den run tp @s[advancements={skyblock:travel_scrolls/spiders_den=true}] -202.5 84 -233.5 135 0
xp add @s[advancements={skyblock:travel_scrolls/spiders_den=true}] -1 points