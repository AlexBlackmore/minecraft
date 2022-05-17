tag @p[advancements={skyblock:commands/abilities/flamebreaker_set=true}] add flamebreaker_set
tag @p[tag=flamebreaker_set,nbt={Inventory:[{Slot:100b,tag:{Name:"Flamebreaker Boots"}},{Slot:101b,tag:{Name:"Flamebreaker Leggings"}},{Slot:102b,tag:{Name:"Flamebreaker Chestplate"}},{Slot:103b,tag:{Name:"Flamebreaker Helmet"}}]}] add flamebreaker_armor

effect give @p[tag=flamebreaker_armor] haste 15 4
effect give @p[tag=flamebreaker_armor] fire_resistance 15

advancement revoke @p[advancements={skyblock:commands/abilities/flamebreaker_set=true},tag=!flamebreaker_armor] only skyblock:commands/abilities/flamebreaker_set
execute if entity @p[tag=flamebreaker_armor] run schedule function skyblock:abilities/ambient/flamebreaker_set 4s replace
tag @p[tag=flamebreaker_set] remove flamebreaker_set
tag @p[tag=flamebreaker_armor] remove flamebreaker_armor