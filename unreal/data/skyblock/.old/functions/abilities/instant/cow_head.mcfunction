tag @p[advancements={skyblock:commands/instant/cow_head=true}] add cow_head

effect clear @p[tag=cow_head] slowness
effect clear @p[tag=cow_head] mining_fatigue
effect clear @p[tag=cow_head] nausea
effect clear @p[tag=cow_head] blindness
effect clear @p[tag=cow_head] weakness
effect clear @p[tag=cow_head] poison
effect clear @p[tag=cow_head] wither
effect clear @p[tag=cow_head] unluck
effect clear @p[tag=cow_head] bad_omen

advancement revoke @p[tag=cow_head] only skyblock:commands/instant/cow_head
tag @p[tag=cow_head] remove cow_head