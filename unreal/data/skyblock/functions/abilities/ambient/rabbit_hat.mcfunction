effect give @p[predicate=skyblock:rabbit_hat] jump_boost 11 3
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/rabbit_hat=true}] run schedule function skyblock:abilities/ambient/rabbit_hat 4s replace

