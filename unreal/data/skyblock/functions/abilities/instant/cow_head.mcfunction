tag @s[advancements={skyblock:commands/abilities/cow_head=true}] add cow_head

effect clear @s[tag=cow_head] slowness
effect clear @s[tag=cow_head] mining_fatigue
effect clear @s[tag=cow_head] nausea
effect clear @s[tag=cow_head] blindness
effect clear @s[tag=cow_head] weakness
effect clear @s[tag=cow_head] poison
effect clear @s[tag=cow_head] wither
effect clear @s[tag=cow_head] unluck
effect clear @s[tag=cow_head] bad_omen

advancement revoke @s[tag=cow_head] only skyblock:commands/abilities/cow_head
tag @s[tag=cow_head] remove cow_head