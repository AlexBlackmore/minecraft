effect give @p[predicate=skyblock:ghast_head] regeneration 11

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/ghast_head=true}] run schedule function skyblock:abilities/ambient/ghast_head 4s replace

