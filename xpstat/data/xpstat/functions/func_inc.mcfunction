scoreboard players operation @p xpstat_prev -= @p xp
scoreboard players set @p const -1
scoreboard players operation @p xpstat_prev *= @p const
scoreboard players operation @p xpstat_total += @p xpstat_prev
scoreboard players operation @p xpstat_prev = @p xp
