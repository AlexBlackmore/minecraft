function skyblock:reset_commands

effect give @p[predicate=skyblock:wearing_goblin_armor,level=15..20] haste 9 0
effect give @p[predicate=skyblock:wearing_goblin_armor,level=21..24] haste 9 1
effect give @p[predicate=skyblock:wearing_goblin_armor,level=25..28] haste 9 2
effect give @p[predicate=skyblock:wearing_goblin_armor,level=29..] haste 9 3
execute at @p[predicate=skyblock:wearing_goblin_armor] run xp add @p[level=15..] -15 points

execute as @p if predicate skyblock:wearing_goblin_armor run schedule function skyblock:wearing_goblin_armor 4s
