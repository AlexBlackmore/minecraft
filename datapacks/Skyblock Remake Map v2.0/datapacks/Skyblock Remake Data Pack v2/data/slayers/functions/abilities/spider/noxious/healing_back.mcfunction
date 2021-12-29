scoreboard players remove @s S_HealingRedu 50
execute if score @s S_HealingRedu matches ..-1 run scoreboard players set @s S_HealingRedu 0
tag @s remove HealReduced