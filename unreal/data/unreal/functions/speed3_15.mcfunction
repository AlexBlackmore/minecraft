tellraw @p[level=..2] ["",{"text":"At least ","color":"red"},{"text":"3 levels","color":"white"},{"text":" are required to cast this spell.","color":"red"}]
effect give @p[level=..2] minecraft:wither 2 2

effect give @p[level=3..] minecraft:speed 15 2
xp add @p[level=3..] -3 levels
