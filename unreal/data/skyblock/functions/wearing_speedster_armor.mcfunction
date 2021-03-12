function skyblock:reset_commands

attribute @p[predicate=skyblock:wearing_speedster_armor] minecraft:generic.movement_speed modifier add 169658625-361960019-687846744-594870201-585554912 "Speedster Armor Speed" 0.2 multiply_base
attribute @p[predicate=!skyblock:wearing_speedster_armor] minecraft:generic.movement_speed modifier remove 169658625-361960019-687846744-594870201-585554912

execute as @p if predicate skyblock:wearing_speedster_armor run schedule function skyblock:wearing_speedster_armor 1s
