execute as @p[advancements={skyblock:commands/in_farm_suit_biomes=true},predicate=skyblock:wearing_farm_suit] run attribute @p minecraft:generic.movement_speed modifier add 354773272-570901181-412703491-452695579-954947716 "Farm Suit Speed" 0.2 multiply_base
execute as @p[advancements={skyblock:commands/in_farm_suit_biomes=false}] run attribute @p minecraft:generic.movement_speed modifier remove 354773272-570901181-412703491-452695579-954947716
attribute @p[predicate=!skyblock:wearing_farm_suit] minecraft:generic.movement_speed modifier remove 354773272-570901181-412703491-452695579-954947716

execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~ ~ ~ ~ ~1 ~ wheat[age=7] replace wheat
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=6] replace wheat[age=5]
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=5] replace wheat[age=4]
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=4] replace wheat[age=3]
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=3] replace wheat[age=2]
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=2] replace wheat[age=1]
execute at @p[predicate=skyblock:wearing_farm_suit] run fill ~-4 ~ ~-4 ~4 ~1 ~4 wheat[age=1] replace wheat[age=0]

function skyblock:reset_commands
execute as @p if predicate skyblock:wearing_farm_suit run schedule function skyblock:wearing_farm_suit 3s
