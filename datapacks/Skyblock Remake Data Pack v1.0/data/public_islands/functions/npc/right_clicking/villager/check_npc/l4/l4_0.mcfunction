tag @s[scores={Date=16..21}] add NPC_line2
tag @s[scores={Date=46}] add NPC_line3
tag @s[scores={Date=46}] remove NPC_line2
execute if score @s NPC_Skin matches ..108 run function public_islands:npc/right_clicking/villager/check_npc/l3/l3_0
execute if score @s NPC_Skin matches 109.. run function public_islands:npc/right_clicking/villager/check_npc/l2/l2_2
