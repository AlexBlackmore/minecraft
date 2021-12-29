tag @p[nbt={Inventory:[{tag:{Name:"Speed Talisman"}}]}] add speed_accessory
tag @p[nbt={Inventory:[{tag:{Name:"Speed Ring"}}]}] add speed_accessory
tag @p[nbt={Inventory:[{tag:{Name:"Speed Artifact"}}]}] add speed_accessory

execute unless @p[nbt={Inventory:[{tag:{Name:"Speed Talisman"}}]}] run advancement revoke @p[advancements={skyblock:accessories/speed_talisman=true}] only skyblock:accessories/speed_talisman
execute unless @p[nbt={Inventory:[{tag:{Name:"Speed Ring"}}]}] run advancement revoke @p[advancements={skyblock:accessories/speed_ring=true}] only skyblock:accessories/speed_ring
execute unless @p[nbt={Inventory:[{tag:{Name:"Speed Artifact"}}]}] run advancement revoke @p[advancements={skyblock:accessories/speed_artifact=true}] only skyblock:accessories/speed_artifact

attribute @p minecraft:generic.movement_speed modifier remove 33-62-16-89-95
attribute @p[nbt={Inventory:[{tag:{Name:"Speed Artifact"}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.05 multiply_base
attribute @p[nbt={Inventory:[{tag:{Name:"Speed Ring"}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.03 multiply_base
attribute @p[nbt={Inventory:[{tag:{Name:"Speed Talisman"}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.01 multiply_base

execute if entity @p[tag=speed_accessory] run schedule function skyblock:abilities/accessories/speed_accessory 2s replace
tag @p[tag=speed_accessory] remove speed_accessory