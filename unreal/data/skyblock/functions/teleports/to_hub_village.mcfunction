tellraw @s[advancements={skyblock:travel_scrolls/root=true}] ["",{"text":"Teleporting to Hub Village...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/root=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/root=true},gamemode=survival]
gamemode adventure @s[advancements={skyblock:commands/npcs/jerry=true},gamemode=survival]
execute in skyblock:hub_island run tp @s[advancements={skyblock:travel_scrolls/root=true}] -2.5 70 -84.5 180 0
execute in skyblock:hub_island run tp @s[advancements={skyblock:commands/npcs/jerry=true}] -2.5 70 -84.5 180 0
xp add @s -1 points