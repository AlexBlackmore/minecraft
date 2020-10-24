scoreboard objectives add xp xp "xp"
scoreboard objectives add const dummy "const"

scoreboard objectives add xpstat_prev dummy "Previous XP"
scoreboard players set @a xpstat_prev 0
scoreboard objectives add xpstat_total dummy "Total XP"
scoreboard players set @a xpstat_total 0
scoreboard objectives add xpstat_lvl dummy "Experience Level"
scoreboard players set @a xpstat_lvl 0

advancement grant @a only xpstat:root
