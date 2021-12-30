tag @p[advancements={skyblock:commands/abilities/night_affinity=true}] add night_affinity
tag @p[tag=night_affinity,nbt={Inventory:[{Slot:100b,tag:{Name:"Mushroom Boots"}},{Slot:101b,tag:{Name:"Mushroom Leggings"}},{Slot:102b,tag:{Name:"Mushroom Chestplate"}},{Slot:103b,tag:{Name:"Mushroom Helmet"}}]}] add mushroom_armor

effect give @p[tag=mushroom_armor] night_vision 15

attribute @p[tag=night_affinity] minecraft:generic.max_health modifier remove 60-2-51-4-79
attribute @p[tag=night_affinity] minecraft:generic.armor modifier remove 65-49-36-20-48
attribute @p[tag=mushroom_armor,predicate=skyblock:night] minecraft:generic.max_health modifier add 60-2-51-4-79 "Night Affinity" 22 add
attribute @p[tag=mushroom_armor,predicate=skyblock:night] minecraft:generic.armor modifier add 65-49-36-20-48 "Night Affinity" 6 add
tellraw @p[tag=mushroom_armor,predicate=skyblock:night] {"text":"[Night Affinity: +22 Max Health, +6 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=mushroom_armor,predicate=!skyblock:night] {"text":"[Night Affinity: +0 Max Health, +0 Armor]","italic":true,"color":"gray"}
tellraw @p[tag=night_affinity,tag=!mushroom_armor] {"text":"[Night Affinity: +0 Max Health, +0 Armor]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/abilities/night_affinity=true},tag=!mushroom_armor] only skyblock:commands/abilities/night_affinity
execute if entity @p[tag=mushroom_armor] run schedule function skyblock:abilities/ambient/night_affinity 2s replace
tag @p[tag=night_affinity] remove night_affinity
tag @p[tag=mushroom_armor] remove mushroom_armor

