execute as @a[advancements={skyblock:accessories/farming_talisman=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Farming Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] run advancement revoke @s only skyblock:accessories/farming_talisman
advancement revoke @p only skyblock:commands/ambient/farming_biomes

execute as @a[advancements={skyblock:accessories/vaccine_talisman=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Vaccine Talisman\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/vaccine_talisman

execute as @a[advancements={skyblock:accessories/farmer_orb=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Farmer Orb\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/farmer_orb

execute as @a[advancements={skyblock:accessories/night_vision_charm=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Night Vision Charm\",\"italic\":false,\"color\":\"white\"}"}}}]}] run advancement revoke @s only skyblock:accessories/night_vision_charm

execute as @a[advancements={skyblock:accessories/speed_talisman=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] run advancement revoke @s only skyblock:accessories/speed_talisman
execute as @a[advancements={skyblock:accessories/speed_ring=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Ring\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/speed_ring
execute as @a[advancements={skyblock:accessories/speed_artifact=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Speed Artifact\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] run advancement revoke @s only skyblock:accessories/speed_artifact

execute as @a[advancements={skyblock:accessories/feather_talisman=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] run advancement revoke @s only skyblock:accessories/feather_talisman
execute as @a[advancements={skyblock:accessories/feather_ring=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Ring\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/feather_ring
execute as @a[advancements={skyblock:accessories/feather_artifact=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Feather Artifact\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] run advancement revoke @s only skyblock:accessories/feather_artifact

execute as @a[advancements={skyblock:accessories/piggy_bank=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Piggy Bank\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/piggy_bank
execute as @a[advancements={skyblock:accessories/cracked_piggy_bank=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Cracked Piggy Bank\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/cracked_piggy_bank
execute as @a[advancements={skyblock:accessories/broekn_piggy_bank=true}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"Broken Piggy Bank\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run advancement revoke @s only skyblock:accessories/broken_piggy_bank


execute if entity @p[nbt={Inventory:[{tag:{display:{Lore:["{\"text\":\"Accessory\",\"italic\":false,\"color\":\"blue\"}"]}}}]}] run schedule function skyblock:abilities/reset_accessories 2s