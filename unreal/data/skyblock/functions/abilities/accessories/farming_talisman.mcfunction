tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Farming Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] add farming_talisman

execute unless entity @p[advancements={skyblock:commands/ambient/farming_biomes=true},tag=farming_talisman] run attribute @p minecraft:generic.movement_speed modifier remove 10-29-6-13-42
attribute @p[advancements={skyblock:commands/ambient/farming_biomes=true},tag=farming_talisman] minecraft:generic.movement_speed modifier add 10-29-6-13-42 "Farming Talisman" 0.1 multiply_base

tag @p[tag=farming_talisman] remove farming_talisman

function skyblock:abilities/reset_accessories
execute if entity @p[advancements={skyblock:accessories/farming_talisman=true}] run schedule function skyblock:abilities/accessories/farming_talisman 2s replace