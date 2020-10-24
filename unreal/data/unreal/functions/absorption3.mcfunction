tellraw @p[level=0..2] ["",{"text":"At least ","color":"red"},{"text":"3 levels","color":"white"},{"text":" is required to cast this spell.","color":"red"}]
effect give @p[level=0..2] minecraft:wither 2 2

effect give @p[level=3..] minecraft:absorption 16 2
xp add @p[level=3..] -3 levels
