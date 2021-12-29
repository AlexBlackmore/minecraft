tag @p[nbt={Inventory:[{tag:{Name:"Farming Talisman"}}]}] add farming_talisman
advancement revoke @p[advancements={skyblock:accessories/farming_talisman=true},tag=!farming_talisman] only skyblock:accessories/farming_talisman

execute unless entity @p[tag=farming_talisman,predicate=skyblock:farm_biomes] run attribute @p minecraft:generic.movement_speed modifier remove 10-29-6-13-42
attribute @p[tag=farming_talisman,predicate=skyblock:farm_biomes] minecraft:generic.movement_speed modifier add 10-29-6-13-42 "Farming Talisman" 0.1 multiply_base

execute if entity @p[tag=farming_talisman] run schedule function skyblock:abilities/accessories/farming_talisman 2s replace
tag @p[tag=farming_talisman] remove farming_talisman