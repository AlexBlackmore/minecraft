tag @p[advancements={skyblock:commands/ambient/pumpkin_buff=true}] add pumpkin_buff
tag @p[tag=pumpkin_buff,nbt={Inventory:[{Slot:100b,tag:{Name:"Pumpkin Boots"}},{Slot:101b,tag:{Name:"Pumpkin Leggings"}},{Slot:102b,tag:{Name:"Pumpkin Chestplate"}},{Slot:103b,tag:{Name:"Pumpkin Helmet"}}]}] add pumpkin_armor

attribute @p[tag=pumpkin_buff] minecraft:generic.armor_toughness modifier remove 19-29-87-62-91
attribute @p[tag=pumpkin_armor] minecraft:generic.armor_toughness modifier add 19-29-87-62-91 "Pumpkin Buff" 2 add

attribute @p[tag=pumpkin_buff] minecraft:generic.attack_damage modifier remove 13-88-31-75-55
attribute @p[tag=pumpkin_armor] minecraft:generic.attack_damage modifier add 13-88-31-75-55 "Pumpkin Buff" 0.1 multiply

tellraw @p[tag=pumpkin_armor] {"text":"[Pumpkin Buff: +2 Armor Toughness, +10% Attack Damage]","italic":true,"color":"gray"}
tellraw @p[tag=pumpkin_buff,tag=!pumpkin_armor] {"text":"[Pumpkin Buff: +0 Armor Toughness, +0% Attack Damage]","italic":true,"color":"gray"}

advancement revoke @p[advancements={skyblock:commands/ambient/pumpkin_buff=true},tag=!pumpkin_armor] only skyblock:commands/ambient/pumpkin_buff
execute if entity @p[tag=pumpkin_armor] run schedule function skyblock:abilities/ambient/pumpkin_buff 2s replace
tag @p[tag=pumpkin_buff] remove pumpkin_buff
tag @p[tag=pumpkin_armor] remove pumpkin_armor

