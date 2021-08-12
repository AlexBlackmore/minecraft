function skyblock:abilities/reset_accessories

tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Night Vision Charm\",\"italic\":false,\"color\":\"white\"}"}}}]}] add night_vision_charm
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] add feather_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Ring\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] add feather_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Artifact\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] add feather_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Haste Ring\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] add haste_ring
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Fire Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] add fire_accessory
tag @p[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Lava Talisman\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] add fire_accessory

effect give @p[tag=night_vision_charm] night_vision 15
effect give @p[tag=feather_accessory] slow_falling 11
effect give @p[tag=haste_ring] haste 11
effect give @p[tag=fire_accessory] fire_resistance 11

execute if entity @p[tag=night_vision_charm] run schedule function skyblock:abilities/accessories/beacon_effect 4s replace
execute if entity @p[tag=feather_accessory] run schedule function skyblock:abilities/accessories/beacon_effect 4s replace
execute if entity @p[tag=haste_ring] run schedule function skyblock:abilities/accessories/beacon_effect 4s replace
execute if entity @p[tag=fire_accessory] run schedule function skyblock:abilities/accessories/beacon_effect 4s replace

tag @p[tag=night_vision_charm] remove night_vision_charm
tag @p[tag=feather_accessory] remove feather_accessory
tag @p[tag=haste_ring] remove haste_ring
tag @p[tag=fire_accessory] remove fire_accessory
