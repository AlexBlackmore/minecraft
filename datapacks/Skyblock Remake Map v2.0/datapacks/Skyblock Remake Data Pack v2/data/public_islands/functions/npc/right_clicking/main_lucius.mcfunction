scoreboard players add @a[advancements={public_islands:npc/lucius=true},scores={Date=1..}] Date 1
execute if entity @a[advancements={public_islands:npc/lucius=true},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/main_lucius 1t
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=21}] run function public_islands:npc/npc_list/right_click_message/31/2
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=41}] run function public_islands:npc/npc_list/right_click_message/31/3
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=76}] run function public_islands:npc/npc_list/right_click_message/31/4
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=111}] run function public_islands:npc/npc_list/right_click_message/31/5
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=146}] run function public_islands:npc/npc_list/right_click_message/31/6
execute as @a[advancements={public_islands:npc/lucius=true},scores={Date=154..}] run function public_islands:npc/right_clicking/reset
