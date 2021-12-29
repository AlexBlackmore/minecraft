tag @p[advancements={skyblock:commands/ambient/regeneration=true}] add regeneration
tag @p[advancements={skyblock:commands/instant/regeneration=true}] add regeneration
tag @p[tag=regeneration,nbt={Inventory:[{Slot:100b,tag:{Name:"Miner Boots"}}]}] add boots
tag @p[tag=regeneration,nbt={Inventory:[{Slot:101b,tag:{Name:"Miner Leggings"}}]}] add leggings
tag @p[tag=regeneration,nbt={Inventory:[{Slot:102b,tag:{Name:"Miner Chestplate"}}]}] add chestplate
tag @p[tag=regeneration,nbt={Inventory:[{Slot:103b,tag:{Name:"Miner Helmet"}}]}] add helmet
tag @p[tag=regeneration,tag=boots,tag=leggings,tag=chestplate,tag=helmet] add miner_armor

effect clear @p[tag=regeneration,advancements={skyblock:commands/instant/regeneration=true}] regeneration
effect give @p[tag=regeneration,advancements={skyblock:commands/instant/regeneration=true}] hunger 8

execute as @p[tag=regeneration] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get 0.05

execute as @p[tag=miner_armor,scores={max_health=0}] run execute unless data entity @s ActiveEffects[{Id:17b}] run effect give @s regeneration 15
execute as @p[tag=miner_armor,scores={max_health=1}] run execute unless data entity @s ActiveEffects[{Id:17b}] run effect give @s regeneration 15 1
execute as @p[tag=miner_armor,scores={max_health=2}] run execute unless data entity @s ActiveEffects[{Id:17b}] run effect give @s regeneration 15 2
execute as @p[tag=miner_armor,scores={max_health=3..5}] run execute unless data entity @s ActiveEffects[{Id:17b}] run effect give @s regeneration 15 3
execute as @p[tag=miner_armor,scores={max_health=6..}] run execute unless data entity @s ActiveEffects[{Id:17b}] run effect give @s regeneration 15 4


attribute @p[tag=regeneration] minecraft:generic.armor modifier remove 53-25-61-70-57
attribute @p[tag=boots,predicate=skyblock:mine_biomes] minecraft:generic.armor modifier add 53-25-61-70-57 "Miner Boots" 8 add
tellraw @p[tag=boots,predicate=!skyblock:mine_biomes] {"text":"[Miner Boots: +0 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=boots,predicate=skyblock:mine_biomes] {"text":"[Miner Boots: +8 Armor]","italic":true,"color":"gray"}

attribute @p[tag=regeneration] minecraft:generic.armor modifier remove 100-47-80-94-91
attribute @p[tag=leggings,predicate=skyblock:mine_biomes] minecraft:generic.armor modifier add 100-47-80-94-91 "Miner Leggings" 13 add
tellraw @p[tag=leggings,predicate=!skyblock:mine_biomes] {"text":"[Miner Leggings: +0 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=leggings,predicate=skyblock:mine_biomes] {"text":"[Miner Leggings: +13 Armor]","italic":true,"color":"gray"}

attribute @p[tag=regeneration] minecraft:generic.armor modifier remove 82-63-21-55-33
attribute @p[tag=chestplate,predicate=skyblock:mine_biomes] minecraft:generic.armor modifier add 82-63-21-55-33 "Miner Chestplate" 18 add
tellraw @p[tag=chestplate,predicate=!skyblock:mine_biomes] {"text":"[Miner Chestplate: +0 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=chestplate,predicate=skyblock:mine_biomes] {"text":"[Miner Chestplate: +18 Armor]","italic":true,"color":"gray"}

attribute @p[tag=regeneration] minecraft:generic.armor modifier remove 20-13-75-24-71
attribute @p[tag=helmet,predicate=skyblock:mine_biomes] minecraft:generic.armor modifier add 20-13-75-24-71 "Miner Helmet" 8 add
tellraw @p[tag=helmet,predicate=!skyblock:mine_biomes] {"text":"[Miner Helmet: +0 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=helmet,predicate=skyblock:mine_biomes] {"text":"[Miner Helmet: +8 Armor]","italic":true,"color":"gray"}

advancement revoke @p[tag=regeneration] only skyblock:commands/instant/regeneration
advancement revoke @p[advancements={skyblock:commands/ambient/regeneration=true},tag=!boots,tag=!leggings,tag=!chestplate,tag=!helmet] only skyblock:commands/ambient/regeneration
execute if entity @p[advancements={skyblock:commands/ambient/regeneration=true}] run schedule function skyblock:abilities/ambient/regeneration 2s replace
tag @p[tag=regeneration] remove regeneration
tag @p[tag=miner_armor] remove miner_armor
tag @p[tag=boots] remove boots
tag @p[tag=leggings] remove leggings
tag @p[tag=chestplate] remove chestplate
tag @p[tag=helmet] remove helmet

