scoreboard objectives add random dummy "Random"
execute at @e[tag=reforge_anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=reforge_anvil,limit=1,sort=nearest] dummy 18
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=reforge_anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]
kill @e[tag=rng]

function skyblock:reforging/reset_reforge_stats

scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=0},nbt={HandItems:[{tag:{Reforge:"Bizarre"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=1},nbt={HandItems:[{tag:{Reforge:"Itchy"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=2},nbt={HandItems:[{tag:{Reforge:"Ominous"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=3},nbt={HandItems:[{tag:{Reforge:"Pleasant"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=4},nbt={HandItems:[{tag:{Reforge:"Pretty"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=5},nbt={HandItems:[{tag:{Reforge:"Shiny"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=6},nbt={HandItems:[{tag:{Reforge:"Simple"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=7},nbt={HandItems:[{tag:{Reforge:"Strange"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=8},nbt={HandItems:[{tag:{Reforge:"Vivid"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=9},nbt={HandItems:[{tag:{Reforge:"Godly"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=10},nbt={HandItems:[{tag:{Reforge:"Demonic"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=11},nbt={HandItems:[{tag:{Reforge:"Forceful"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=12},nbt={HandItems:[{tag:{Reforge:"Hurtful"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=13},nbt={HandItems:[{tag:{Reforge:"Keen"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=14},nbt={HandItems:[{tag:{Reforge:"Strong"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=15},nbt={HandItems:[{tag:{Reforge:"Superior"}}]},limit=1,sort=nearest] random 1
scoreboard players add @e[tag=success,tag=reforge_anvil,scores={random=16},nbt={HandItems:[{tag:{Reforge:"Unpleasant"}}]},limit=1,sort=nearest] random 1
scoreboard players set @e[tag=success,tag=reforge_anvil,scores={random=17},nbt={HandItems:[{tag:{Reforge:"Zealoud"}}]},limit=1,sort=nearest] random 0 

execute if entity @e[tag=success,tag=reforge_anvil,scores={random=0},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/bizarre
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=1},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/itchy
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=2},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/ominous
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=3},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/pleasant
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=4},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/pretty
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=5},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/shiny
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=6},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/simple
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=7},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/strange
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=8},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/vivid
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=9},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/godly
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=10},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/demonic
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=11},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/forceful
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=12},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/hurtful
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=13},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/keen
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=14},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/strong
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=15},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/superior
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=16},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/unpleasant
execute if entity @e[tag=success,tag=reforge_anvil,scores={random=17},limit=1,sort=nearest] run function skyblock:reforging/reforges/accessories/zealous
