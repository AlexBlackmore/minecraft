effect give @p[advancements={skyblock:commands/ambient/regeneration=true},predicate=skyblock:miner_armor] regeneration 11 1
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/regeneration=true}] run schedule function skyblock:abilities/ambient/regeneration 4s replace