tellraw @s[advancements={skyblock:travel_scrolls/blazing_fortress=true}] ["",{"text":"Teleporting to Blazing Fortress...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/blazing_fortress=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,advancements={skyblock:travel_scrolls/blazing_fortress=true}]
execute in skyblock:blazing_fortress run tp @s[advancements={skyblock:travel_scrolls/blazing_fortress=true}] -310.0 83 -380.5 -180 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:blazing_fortress run tp @s -310.0 83 -380.5 -180 0
xp add @s -1 points
