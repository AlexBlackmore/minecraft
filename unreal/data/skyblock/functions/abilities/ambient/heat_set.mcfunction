tag @p[advancements={skyblock:commands/abilities/heat_set=true}] add heat_set
tag @p[tag=heat_set,nbt={Inventory:[{Slot:100b,tag:{Name:"Heat Boots"}},{Slot:101b,tag:{Name:"Heat Leggings"}},{Slot:102b,tag:{Name:"Heat Chestplate"}},{Slot:103b,tag:{Name:"Heat Helmet"}}]}] add heat_armor

effect give @p[tag=heat_armor] haste 15 1
effect give @p[tag=heat_armor,predicate=skyblock:nether_biomes] fire_resistance 15

advancement revoke @p[advancements={skyblock:commands/abilities/heat_set=true},tag=!heat_armor] only skyblock:commands/abilities/heat_set
execute if entity @p[tag=heat_armor] run schedule function skyblock:abilities/ambient/heat_set 4s replace
tag @p[tag=heat_set] remove heat_set
tag @p[tag=heat_armor] remove heat_armor