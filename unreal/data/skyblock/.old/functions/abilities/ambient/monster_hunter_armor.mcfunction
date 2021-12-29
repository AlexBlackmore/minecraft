tag @p[advancements={skyblock:commands/ambient/monster_hunter=true}] add monster_hunter
tag @p[tag=monster_hunter,nbt={Inventory:[{Slot:100b,tag:{Name:"Spider's Boots"}},{Slot:101b,tag:{Name:"Creeper Pants"}},{Slot:102b,tag:{Name:"Guardian Chestplate"}},{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] add monster_hunter_armor

attribute @p[tag=monster_hunter] minecraft:generic.armor_toughness modifier remove 25-43-3-57-46
attribute @p[tag=monster_hunter_armor] minecraft:generic.armor_toughness modifier add 25-43-3-57-46 "Monster Hunter Armor" 5 add

attribute @p[tag=monster_hunter] minecraft:generic.attack_damage modifier remove 90-66-4-53-83
attribute @p[tag=monster_hunter_armor] minecraft:generic.attack_damage modifier add 90-66-4-53-83 "Monster Hunter Armor" 0.25 multiply

tellraw @p[tag=monster_hunter_armor] {"text":"[Monster Hunter: +5 Armor Toughness, +25% Attack Damage]","italic":true,"color":"gray"}
tellraw @p[tag=monster_hunter,tag=!monster_hunter_armor] {"text":"[Monster Hunter: +0 Armor Toughness, +0% Attack Damage]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/ambient/monster_hunter=true},tag=!monster_hunter_armor] only skyblock:commands/ambient/monster_hunter
execute if entity @p[tag=monster_hunter_armor] run schedule function skyblock:abilities/ambient/monster_hunter 2s replace
tag @p[tag=monster_hunter] remove monster_hunter
tag @p[tag=monster_hunter_armor] remove monster_hunter_armor