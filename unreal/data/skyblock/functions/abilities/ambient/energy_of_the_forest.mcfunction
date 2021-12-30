tag @p[advancements={skyblock:commands/abilities/energy_of_the_forest=true}] add energy_of_the_forest
tag @p[tag=energy_of_the_forest,nbt={Inventory:[{Slot:100b,tag:{Name:"Leaflet Sandals"}},{Slot:101b,tag:{Name:"Leaflet Pants"}},{Slot:102b,tag:{Name:"Leaflet Tunic"}},{Slot:103b,tag:{Name:"Leaflet Hat"}}]}] add leaflet_armor

effect give @p[tag=leaflet_armor,predicate=skyblock:forest_biomes] regeneration 15 1

advancement revoke @p[advancements={skyblock:commands/abilities/energy_of_the_forest=true},tag=!leaflet_armor] only skyblock:commands/abilities/energy_of_the_forest
execute if entity @p[tag=leaflet_armor] run schedule function skyblock:abilities/ambient/energy_of_the_forest 4s replace
tag @p[tag=energy_of_the_forest] remove energy_of_the_forest
tag @p[tag=leaflet_armor] remove leaflet_armor