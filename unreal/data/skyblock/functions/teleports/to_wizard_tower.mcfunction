tellraw @s[advancements={skyblock:travel_scrolls/wizard_tower=true}] ["",{"text":"Teleporting to Wizard Tower...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/wizard_tower=false}] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/wizard_tower=true},gamemode=survival]
execute in skyblock:hub_island run tp @s[advancements={skyblock:travel_scrolls/wizard_tower=true}] 46.5 122 72.5 90 0
xp add @s[advancements={skyblock:travel_scrolls/wizard_tower=true}] -1 points