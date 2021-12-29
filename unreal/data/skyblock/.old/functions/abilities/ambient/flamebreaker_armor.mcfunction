tag @p[advancements={skyblock:commands/ambient/flamebreaker_armor=true}] add heat_resistance
tag @p[tag=heat_resistance,nbt={Inventory:[{Slot:100b,tag:{Name:"Flamebreaker Boots"}},{Slot:101b,tag:{Name:"Flamebreaker Leggings"}},{Slot:102b,tag:{Name:"Flamebreaker Chestplate"}},{Slot:103b,tag:{Name:"Flamebreaker Helmet"}}]}] add flamebreaker_armor

effect give @p[tag=flamebreaker_armor] haste 15 4
effect give @p[tag=flamebreaker_armor,predicate=skyblock:on_fire] resistance 15 3

advancement revoke @p[advancements={skyblock:commands/ambient/flamebreaker_armor=true},tag=!flamebreaker_armor] only skyblock:commands/ambient/flamebreaker_armor
execute if entity @p[tag=flamebreaker_armor] run schedule function skyblock:abilities/ambient/flamebreaker_armor 4s replace
tag @p[tag=heat_resistance] remove heat_resistance
tag @p[tag=flamebreaker_armor] remove flamebreaker_armor