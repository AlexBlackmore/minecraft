tellraw @s[advancements={skyblock:travel_scrolls/mushroom_desert=true}] ["",{"text":"Teleporting to Mushroom Desert...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/mushroom_desert=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/mushroom_desert=true},gamemode=survival]
execute in skyblock:mushroom_desert run tp @s[advancements={skyblock:travel_scrolls/mushroom_desert=true}] 160.5 77 -370 -147 0
xp add @s[advancements={skyblock:travel_scrolls/mushroom_desert=true}] -1 points