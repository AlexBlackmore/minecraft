tag @p[advancements={skyblock:commands/ambient/heat_armor=true}] add heat_resistance
tag @p[tag=heat_resistance,nbt={Inventory:[{Slot:100b,tag:{Name:"Heat Boots"}},{Slot:101b,tag:{Name:"Heat Leggings"}},{Slot:102b,tag:{Name:"Heat Chestplate"}},{Slot:103b,tag:{Name:"Heat Helmet"}}]}] add heat_armor

effect give @p[tag=heat_armor] haste 15 2
effect give @p[tag=heat_armor,predicate=skyblock:on_fire] resistance 15

advancement revoke @p[advancements={skyblock:commands/ambient/heat_armor=true},tag=!heat_armor] only skyblock:commands/ambient/heat_armor
execute if entity @p[tag=heat_armor] run schedule function skyblock:abilities/ambient/heat_armor 4s replace
tag @p[tag=heat_resistance] remove heat_resistance
tag @p[tag=heat_armor] remove heat_armor