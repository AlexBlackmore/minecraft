tag @p[advancements={skyblock:commands/abilities/bonus_speed=true}] add bonus_speed
tag @p[tag=bonus_speed,nbt={Inventory:[{Slot:100b,tag:{Name:"Farm Suit Boots"}},{Slot:101b,tag:{Name:"Farm Suit Leggings"}},{Slot:102b,tag:{Name:"Farm Suit Chestplate"}},{Slot:103b,tag:{Name:"Farm Suit Helmet"}}]}] add farm_suit
tag @p[tag=bonus_speed,nbt={Inventory:[{Slot:100b,tag:{Name:"Farm Armor Boots"}},{Slot:101b,tag:{Name:"Farm Armor Leggings"}},{Slot:102b,tag:{Name:"Farm Armor Chestplate"}},{Slot:103b,tag:{Name:"Farm Armor Helmet"}}]}] add farm_armor
tag @p[tag=bonus_speed,nbt={Inventory:[{Slot:100b,tag:{Name:"Speedster Boots"}},{Slot:101b,tag:{Name:"Speedster Leggings"}},{Slot:102b,tag:{Name:"Speedster Chestplate"}},{Slot:103b,tag:{Name:"Speedster Helmet"}}]}] add speedster_armor
tag @p[tag=farm_suit] add full_set
tag @p[tag=farm_armor] add full_set
tag @p[tag=speedster_armor] add full_set

attribute @p[tag=bonus_speed] minecraft:generic.movement_speed modifier remove 15-22-47-27-33
attribute @p[tag=speedster_armor] minecraft:generic.movement_speed modifier add 15-22-47-27-33 "Bonus Speed" 0.2 multiply_base
attribute @p[tag=farm_armor,predicate=skyblock:farm_biomes] minecraft:generic.movement_speed modifier add 15-22-47-27-33 "Bonus Speed" 0.25 multiply_base
attribute @p[tag=farm_suit,predicate=skyblock:farm_biomes] minecraft:generic.movement_speed modifier add 15-22-47-27-33 "Bonus Speed" 0.2 multiply_base

tellraw @p[tag=farm_suit,predicate=skyblock:farm_biomes] {"text":"[Bonus Speed: +20% Speed]","italic":true,"color":"gray"}
tellraw @p[tag=farm_armor,predicate=skyblock:farm_biomes] {"text":"[Bonus Speed: +25% Speed]","italic":true,"color":"gray"}
tellraw @p[tag=speedster_armor] {"text":"[Bonus Speed: +20% Speed]","italic":true,"color":"gray"}

tellraw @p[tag=farm_suit,predicate=!skyblock:farm_biomes] {"text":"[Bonus Speed: +0% Speed]","italic":true,"color":"gray"}
tellraw @p[tag=farm_armor,predicate=!skyblock:farm_biomes] {"text":"[Bonus Speed: +0% Speed]","italic":true,"color":"gray"}
tellraw @p[tag=bonus_speed,tag=!full_set] {"text":"[Bonus Speed: +0% Speed]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/abilities/bonus_speed=true},tag=!full_set] only skyblock:commands/abilities/bonus_speed
execute if entity @p[tag=full_set] run schedule function skyblock:abilities/ambient/bonus_speed 2s replace
tag @p[tag=bonus_speed] remove bonus_speed
tag @p[tag=farm_suit] remove farm_suit
tag @p[tag=farm_armor] remove farm_armor
tag @p[tag=speedster_armor] remove speedster_armor
tag @p[tag=full_set] remove full_set

