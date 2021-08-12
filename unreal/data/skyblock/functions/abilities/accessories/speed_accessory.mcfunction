function skyblock:abilities/reset_accessories
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] add speed_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Ring\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] add speed_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Artifact\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] add speed_accessory

attribute @p minecraft:generic.movement_speed modifier remove 33-62-16-89-95
attribute @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Artifact\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.05 multiply_base
attribute @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Ring\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.03 multiply_base
attribute @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] minecraft:generic.movement_speed modifier add 33-62-16-89-95 "Speed Accessory" 0.01 multiply_base

execute if entity @p[tag=speed_accessory] run schedule function skyblock:abilities/accessories/speed_accessory 2s replace

tag @p[tag=speed_accessory] remove speed_accessory