execute at @p[level=7..,predicate=skyblock:cooldown] run effect give @p instant_health 1 1
execute at @p[level=7..,predicate=skyblock:cooldown] run xp add @p -80 points
execute at @p[level=9..,predicate=skyblock:cooldown] run effect give @p hunger 1
function skyblock:reset_commands
