execute as @p[advancements={skyblock:commands/ambient/ghast_head=true}] run execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Name:"Ghast Head"}}]}] run advancement revoke @s only skyblock:commands/ambient/ghast_head
tag @p[advancements={skyblock:commands/ambient/ghast_head=true}] add ghast_head

effect give @p[tag=ghast_head] regeneration 11

execute if entity @p[advancements={skyblock:commands/ambient/ghast_head=true}] run schedule function skyblock:abilities/ambient/ghast_head 4s replace

tag @p[tag=ghast_head] remove ghast_head