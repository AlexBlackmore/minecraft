tellraw @s[advancements={skyblock:travel_scrolls/the_barn=true}] ["",{"text":"Teleporting to The Barn...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/the_barn=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/the_barn=true},gamemode=survival]
execute in skyblock:the_barn run tp @s[advancements={skyblock:travel_scrolls/the_barn=true}] 113.5 71 -207.5 -135 0
xp add @s[advancements={skyblock:travel_scrolls/the_barn=true}] -1 points