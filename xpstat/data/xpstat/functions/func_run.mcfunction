execute if score @p xpstat_prev < @p xp run function xpstat:func_inc
execute if score @p xpstat_prev > @p xp run scoreboard players operation @p xpstat_prev = @p xp
function xpstat:func_lvlup
