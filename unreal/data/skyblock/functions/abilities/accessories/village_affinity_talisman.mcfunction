tag @p[nbt={Inventory:[{tag:{Name:"Village Affinity Talisman"}}]}] add village_affinity_talisman
advancement revoke @p[advancements={skyblock:accessories/village_affinity_talisman=true},tag=!village_affinity_talisman] only skyblock:accessories/village_affinity_talisman

execute unless entity @p[tag=village_affinity_talisman] run attribute @p minecraft:generic.movement_speed modifier remove 89-49-42-32-43
execute if entity @e[type=villager,distance=0..64] run attribute @p[tag=village_affinity_talisman] minecraft:generic.movement_speed modifier add 89-49-42-32-43 "Village Affinity Talisman" 0.1 multiply_base

execute if entity @p[tag=village_affinity_talisman] run schedule function skyblock:abilities/accessories/village_affinity_talisman 2s replace
tag @p[tag=village_affinity_talisman] remove village_affinity_talisman