execute at @p[level=6..,predicate=skyblock:cooldown] run effect give @p instant_health 1 0
execute at @p[level=6..,predicate=skyblock:cooldown] run xp add @p -60 points
execute at @p[level=6..,predicate=skyblock:cooldown] run effect give @p hunger 1
function skyblock:reset_commands
