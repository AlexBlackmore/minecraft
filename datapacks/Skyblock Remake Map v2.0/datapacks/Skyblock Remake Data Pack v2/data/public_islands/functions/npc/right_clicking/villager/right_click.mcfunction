tag @s remove NPC_available
scoreboard players set @s Date 1
execute if entity @a[scores={Date=1..}] run schedule function public_islands:npc/right_clicking/villager/main 1t
execute if entity @a[advancements={public_islands:npc/villager/stella=true},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/villager/main_stella 1t
