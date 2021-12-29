scoreboard players operation @s MastiffHeal = @s PlayerHP
scoreboard players operation @s MastiffHeal /= c50 Constant
scoreboard players operation @s PlayerHP += @s MastiffHeal
function stats:calculate/current_effective_health
scoreboard players set @s MastiffCooldown 0