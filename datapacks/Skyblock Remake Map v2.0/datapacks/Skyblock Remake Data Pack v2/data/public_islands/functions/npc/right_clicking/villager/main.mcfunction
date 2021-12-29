scoreboard players add @a[tag=TalkedToVillager,advancements={public_islands:npc/villager/stella=false},scores={Date=1..}] Date 1
execute if entity @a[advancements={public_islands:npc/villager/stella=false},tag=TalkedToVillager,scores={Date=1..}] run schedule function public_islands:npc/right_clicking/villager/main 1t
execute as @a[tag=TalkedToVillager,tag=NPC_1line,scores={Date=9..}] run function public_islands:npc/right_clicking/reset
execute as @a[tag=NPC_2lines,scores={Date=21}] run function public_islands:npc/right_clicking/villager/check_npc/l4/l4_0
execute as @a[tag=TalkedToVillager,tag=NPC_2lines,scores={Date=29..}] run function public_islands:npc/right_clicking/reset
execute as @a[tag=NPC_3lines,scores={Date=16}] run function public_islands:npc/right_clicking/villager/check_npc/l4/l4_0
execute as @a[tag=TalkedToVillager,tag=NPC_3lines,scores={Date=46}] run function public_islands:npc/right_clicking/villager/check_npc/l4/l4_0
execute as @a[tag=NPC_3lines,scores={Date=54..}] run function public_islands:npc/right_clicking/reset
