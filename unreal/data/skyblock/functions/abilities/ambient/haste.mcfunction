effect give @p[predicate=skyblock:miners_outfit] haste 11 1
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/haste=true}] run schedule function skyblock:abilities/ambient/haste 4s replace

