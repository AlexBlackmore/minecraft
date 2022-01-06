tag @p[nbt={Inventory:[{tag:{Name:"Mine Affinity Talisman"}}]}] add mine_affinity_talisman
advancement revoke @p[advancements={skyblock:accessories/mine_affinity_talisman=true},tag=!mine_affinity_talisman] only skyblock:accessories/mine_affinity_talisman

execute unless entity @p[tag=mine_affinity_talisman,predicate=skyblock:farm_biomes] run attribute @p minecraft:generic.movement_speed modifier remove 37-82-11-87-85
attribute @p[tag=mine_affinity_talisman,predicate=skyblock:mine_biomes] minecraft:generic.movement_speed modifier add 37-82-11-87-85 "Farming Talisman" 0.1 multiply_base

execute if entity @p[tag=mine_affinity_talisman] run schedule function skyblock:abilities/accessories/mine_affinity_talisman 2s replace
tag @p[tag=mine_affinity_talisman] remove mine_affinity_talisman