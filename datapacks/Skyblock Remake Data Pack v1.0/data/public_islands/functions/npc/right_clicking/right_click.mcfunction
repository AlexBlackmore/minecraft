tag @s remove NPC_available
scoreboard players set @s Date 1
execute if entity @a[advancements={public_islands:npc/lucius=false},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/main 1t
execute if entity @a[advancements={public_islands:npc/lucius=true},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/main_lucius 1t
