tellraw @s[advancements={skyblock:travel_scrolls/dungeons_hub=true}] ["",{"text":"Teleporting to Dungeons Hub...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/dungeons_hub=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/dungeons_hub=true},gamemode=survival]
execute in skyblock:dungeons_hub run tp @s[advancements={skyblock:travel_scrolls/dungeons_hub=true}] -30 121 0 90 0
execute in skyblock:dungeons_hub run tp @s[advancements={skyblock:commands/npcs/mort=true}] -30 121 0 90 0
execute at @s if block ~ ~ ~ minecraft:end_gateway in skyblock:dungeons_hub run tp @s -30 121 0 90 0
xp add @s -1 points