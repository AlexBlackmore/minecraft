function skyblock:reset_commands
effect give @p[predicate=skyblock:wearing_blaze_armor] fire_resistance 9 0
execute at @p[predicate=skyblock:wearing_blaze_armor] run execute at @e[type=!player,distance=0..5] run fill ~ ~ ~ ~ ~1 ~ fire replace air
execute as @p if predicate skyblock:wearing_blaze_armor run schedule function skyblock:wearing_blaze_armor 2s
