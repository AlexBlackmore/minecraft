tellraw @p[level=0] ["",{"text":"At least ","color":"red"},{"text":"1 level","color":"white"},{"text":" is required to cast this spell.","color":"red"}]
effect give @p[level=0] minecraft:wither 2 0

effect give @p[level=1..] minecraft:night_vision 16 0
xp add @p[level=1..] -1 levels
