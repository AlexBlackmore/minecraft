scoreboard objectives add random dummy "Random"
execute at @e[tag=reforge_anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=reforge_anvil,limit=1,sort=nearest] dummy 9
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=reforge_anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]
kill @e[tag=rng]

function skyblock:reforging/reset_reforge_stats

scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=0},nbt={HandItems:[{tag:{Reforge:"Gentle"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=1},nbt={HandItems:[{tag:{Reforge:"Odd"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=2},nbt={HandItems:[{tag:{Reforge:"Fast"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=3},nbt={HandItems:[{tag:{Reforge:"Fair"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=4},nbt={HandItems:[{tag:{Reforge:"Epic"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=5},nbt={HandItems:[{tag:{Reforge:"Sharp"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=6},nbt={HandItems:[{tag:{Reforge:"Heroic"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=7},nbt={HandItems:[{tag:{Reforge:"Spicy"}}]},limit=1,sort=nearest] random 1
scoreboard players set @e[tag=success,tag=reforge_anvil,scores={random=8},nbt={HandItems:[{tag:{Reforge:"Legendary"}}]},limit=1,sort=nearest] random 0

execute if entity @e[tag=success,tag=reforge_anvil,scores={random=0},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/gentle
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=1},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/odd
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=2},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/fast
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=3},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/fair
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=4},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/epic
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=5},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/sharp
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=6},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/heroic
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=7},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/spicy
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=8},limit=1,sort=nearest] run function skyblock:reforging/reforges/swords/legendary
