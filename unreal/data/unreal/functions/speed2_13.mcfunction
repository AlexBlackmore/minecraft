tellraw @p[level=..1] ["",{"text":"At least ","color":"red"},{"text":"2 levels","color":"white"},{"text":" are required to cast this spell.","color":"red"}]
effect give @p[level=..1] minecraft:wither 2 1

effect give @p[level=2..] minecraft:speed 13 1
xp add @p[level=2..] -2 levels
