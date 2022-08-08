#Night Vision
effect give @a[nbt={Inventory:[{tag:{Name:"Night Vision Charm"}}]}] night_vision 15 0

#Fire Resistance
effect give @a[nbt={Inventory:[{tag:{Name:"Fire Talisman"}}]}] fire_resistance 15 0
effect give @a[nbt={Inventory:[{tag:{Name:"Lava Talisman"}}]}] fire_resistance 15 0

#Regeneration
effect give @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Ghast Head"}}]}] regeneration 15 0

#Jump Boost
effect give @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Rabbit Hat"}}]}] jump_boost 15 3

#Resistance
execute as @a[advancements={skyblock:commands/abilities/skeletons_helmet=true}] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] run advancement revoke @s only skyblock:commands/abilities/skeletons_helmet
effect give @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] resistance 15 0
effect give @a[advancements={skyblock:commands/abilities/skeletons_helmet=true},tag=bone_shield1] resistance 15 1
effect give @a[advancements={skyblock:commands/abilities/skeletons_helmet=true},tag=bone_shield2] resistance 15 2
effect give @a[advancements={skyblock:commands/abilities/skeletons_helmet=true},tag=bone_shield3] resistance 15 3


execute as @a[advancements={skyblock:accessories/farming_talisman=true},predicate=skyblock:farm_biomes] run attribute @s minecraft:generic.movement_speed modifier add 10-29-6-13-42 "Farming Talisman" 0.1 multiply_base
execute as @a[predicate=!skyblock:farm_biomes] run attribute @s minecraft:generic.movement_speed modifier remove 10-29-6-13-42

execute as @a[advancements={skyblock:accessories/wood_affinity_talisman=true},predicate=skyblock:forest_biomes] run attribute @s minecraft:generic.movement_speed modifier add 24-39-42-96-89 "Wood Affinity Talisman" 0.1 multiply_base
execute as @a[predicate=!skyblock:forest_biomes] run attribute @s minecraft:generic.movement_speed modifier remove 24-39-42-96-89

execute as @a[advancements={skyblock:accessories/village_affinity_talisman=true}] if entity @e[type=villager,distance=0..16] run attribute @s minecraft:generic.movement_speed modifier add 44-35-76-97-98 "Village Affinity Talisman" 0.1 multiply_base
execute as @a unless entity @e[type=villager,distance=0..16] run attribute @s minecraft:generic.movement_speed modifier remove 44-35-76-97-98

execute as @a[advancements={skyblock:accessories/mine_affinity_talisman=true},predicate=skyblock:mine_biomes] run attribute @s minecraft:generic.movement_speed modifier add 45-12-94-81-8 "Mine Affinity Talisman" 0.1 multiply_base
execute as @a[predicate=!skyblock:mine_biomes] run attribute @s minecraft:generic.movement_speed modifier remove 45-12-94-81-8

execute as @a[advancements={skyblock:accessories/day_crystal=true},predicate=skyblock:day] run attribute @s minecraft:generic.attack_damage modifier add 30-5-45-10-69 "Day Crystal Attack Damage" 1 add
execute as @a[advancements={skyblock:accessories/day_crystal=true},predicate=skyblock:day] run attribute @s minecraft:generic.armor modifier add 33-91-94-28-54 "Day Crystal Armor" 1 add
execute as @a[predicate=!skyblock:day] run attribute @s minecraft:generic.attack_damage modifier remove 30-5-45-10-69
execute as @a[predicate=!skyblock:day] run attribute @s minecraft:generic.armor modifier remove 33-91-94-28-54

execute as @a[advancements={skyblock:accessories/night_crystal=true},predicate=skyblock:night] run attribute @s minecraft:generic.attack_damage modifier add 30-5-45-10-69 "Night Crystal Attack Damage" 1 add
execute as @a[advancements={skyblock:accessories/night_crystal=true},predicate=skyblock:night] run attribute @s minecraft:generic.armor modifier add 33-91-94-28-54 "Night Crystal Armor" 1 add
execute as @a[predicate=!skyblock:night] run attribute @s minecraft:generic.attack_damage modifier remove 30-5-45-10-69
execute as @a[predicate=!skyblock:night] run attribute @s minecraft:generic.armor modifier remove 33-91-94-28-54
