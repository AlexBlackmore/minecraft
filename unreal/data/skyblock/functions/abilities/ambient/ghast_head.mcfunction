tag @p[nbt={Inventory:[{Slot:103b,tag:{Name:"Ghast Head"}}]}] add ghast_head
advancement revoke @p[advancements={skyblock:commands/abilities/ghast_head=true},tag=!ghast_head] only skyblock:commands/abilities/ghast_head

effect give @p[tag=ghast_head] regeneration 15 0 true

execute if entity @p[tag=ghast_head] run schedule function skyblock:abilities/ambient/ghast_head 4s replace
tag @p[tag=ghast_head] remove ghast_head