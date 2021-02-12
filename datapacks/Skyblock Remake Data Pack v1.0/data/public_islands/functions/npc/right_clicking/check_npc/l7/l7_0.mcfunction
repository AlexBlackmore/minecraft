tag @s[scores={Date=16..21}] add NPC_line2
tag @s[scores={Date=46}] add NPC_line3
tag @s[scores={Date=46}] remove NPC_line2
execute if score @s NPC_Skin matches ..65 run function public_islands:npc/right_clicking/check_npc/l6/l6_0
execute if score @s NPC_Skin matches 66.. run function public_islands:npc/right_clicking/check_npc/l6/l6_1
