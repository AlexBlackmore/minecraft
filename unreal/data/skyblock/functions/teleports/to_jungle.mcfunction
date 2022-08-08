tellraw @s[advancements={skyblock:travel_scrolls/jungle=true}] ["",{"text":"Teleporting to The Park Jungle...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/jungle=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/jungle=true},gamemode=survival]
execute in skyblock:the_park run tp @s[advancements={skyblock:travel_scrolls/jungle=true}] -277.5 82 -13.5 90 0
xp add @s[advancements={skyblock:travel_scrolls/jungle=true}] -1 points