tag @p[advancements={skyblock:commands/ambient/monster_raider=true}] add monster_raider
tag @p[tag=monster_raider,nbt={Inventory:[{Slot:100b,tag:{Name:"Tarantula Boots"}},{Slot:101b,tag:{Name:"Creeper Pants"}},{Slot:102b,tag:{Name:"Guardian Chestplate"}},{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] add monster_raider_armor

attribute @p[tag=monster_raider] minecraft:generic.armor_toughness modifier remove 25-43-3-57-46
attribute @p[tag=monster_raider_armor] minecraft:generic.armor_toughness modifier add 25-43-3-57-46 "Monster Raider Armor" 7 add

attribute @p[tag=monster_raider] minecraft:generic.attack_damage modifier remove 90-66-4-53-83
attribute @p[tag=monster_raider_armor] minecraft:generic.attack_damage modifier add 90-66-4-53-83 "Monster Raider Armor" 0.35 multiply

tellraw @p[tag=monster_raider_armor] {"text":"[Monster Raider: +7 Armor Toughness, +35% Attack Damage]","italic":true,"color":"gray"}
tellraw @p[tag=monster_raider,tag=!monster_raider_armor] {"text":"[Monster Raider: +0 Armor Toughness, +0% Attack Damage]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/ambient/monster_raider=true},tag=!monster_raider_armor] only skyblock:commands/ambient/monster_raider
execute if entity @p[tag=monster_raider_armor] run schedule function skyblock:abilities/ambient/monster_raider 2s replace
tag @p[tag=monster_raider] remove monster_raider
tag @p[tag=monster_raider_armor] remove monster_raider_armor