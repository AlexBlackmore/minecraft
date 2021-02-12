execute if entity @s[tag=!detailed] if entity @a[distance=..23] run function public_islands:npc/npc_list/detail/swap_to_detailed
execute if entity @s[tag=detailed] unless entity @a[distance=..23] run function public_islands:npc/npc_list/detail/swap_to_undetailed
