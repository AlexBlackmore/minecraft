scoreboard players add @a[advancements={public_islands:npc/villager/stella=true},scores={Date=1..}] Date 1
execute if entity @a[advancements={public_islands:npc/villager/stella=true},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/villager/main_stella 1t
execute as @a[advancements={public_islands:npc/villager/stella=true},scores={Date=41}] run function public_islands:npc/npc_list/right_click_message/villager/stella/2
execute as @a[advancements={public_islands:npc/villager/stella=true},scores={Date=81}] run function public_islands:npc/npc_list/right_click_message/villager/stella/3
execute as @a[advancements={public_islands:npc/villager/stella=true},scores={Date=121}] run function public_islands:npc/npc_list/right_click_message/villager/stella/4
execute as @a[advancements={public_islands:npc/villager/stella=true},scores={Date=161}] run function public_islands:npc/npc_list/right_click_message/villager/stella/5
execute as @a[advancements={public_islands:npc/villager/stella=true},scores={Date=169..}] run function public_islands:npc/right_clicking/reset
