function skyblock:reset_commands
effect give @p[predicate=skyblock:wearing_miners_outfit] haste 9 1
execute as @p if predicate skyblock:wearing_miners_outfit run schedule function skyblock:wearing_miners_outfit 4s
