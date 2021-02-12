scoreboard players add @a[advancements={public_islands:npc/lucius=false},scores={Date=1..}] Date 1
execute if entity @a[advancements={public_islands:npc/lucius=false},scores={Date=1..}] run schedule function public_islands:npc/right_clicking/main 1t
execute as @a[tag=NPC_1line,scores={Date=9..}] run function public_islands:npc/right_clicking/reset
execute as @a[tag=NPC_2lines,scores={Date=21}] run function public_islands:npc/right_clicking/check_npc/l7/l7_0
execute as @a[tag=NPC_2lines,scores={Date=29..}] run function public_islands:npc/right_clicking/reset
execute as @a[tag=NPC_3lines,scores={Date=16}] run function public_islands:npc/right_clicking/check_npc/l7/l7_0
execute as @a[tag=NPC_3lines,scores={Date=46}] run function public_islands:npc/right_clicking/check_npc/l7/l7_0
execute as @a[tag=NPC_3lines,scores={Date=54..}] run function public_islands:npc/right_clicking/reset
