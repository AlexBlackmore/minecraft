execute at @p[tag=ability] run particle minecraft:splash ~ ~ ~ 0.5 0 0.5 1 100
xp add @p[tag=ability] -10 points
effect give @p[tag=ability] hunger 1

playsound minecraft:entity.player.splash player @p[tag=ability]
tellraw @p[tag=ability] ["",{"text":"[@: Used Splash]","italic":true,"color":"gray"}]
tellraw @p[tag=ability] {"text":"It's not very effective..."}

execute at @p[tag=ability] run fill ~-4 ~-1 ~-4 ~4 ~ ~4 minecraft:farmland[moisture=7] replace minecraft:farmland
execute at @p[tag=ability] run fill ~-4 ~-1 ~-4 ~4 ~ ~4 minecraft:water_cauldron[level=3] replace minecraft:water_cauldron[level=2]
execute at @p[tag=ability] run fill ~-4 ~-1 ~-4 ~4 ~ ~4 minecraft:water_cauldron[level=2] replace minecraft:water_cauldron[level=1]
execute at @p[tag=ability] run fill ~-4 ~-1 ~-4 ~4 ~ ~4 minecraft:water_cauldron replace minecraft:cauldron

tag @p[tag=ability,nbt={SelectedItem:{id:"minecraft:bucket"}}] add fill_bucket
item modify entity @p[tag=fill_bucket] weapon.mainhand skyblock:subtract_item
give @p[tag=fill_bucket] water_bucket
tag @p[tag=fill_bucket] remove fill_bucket
tag @p[tag=ability,nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] add fill_bucket
item modify entity @p[tag=fill_bucket] weapon.offhand skyblock:subtract_item
give @p[tag=fill_bucket] water_bucket

tag @p[tag=ability,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] add fill_bottle
item modify entity @p[tag=fill_bottle] weapon.mainhand skyblock:subtract_item
give @p[tag=fill_bottle] potion{Potion:"water"}
tag @p[tag=fill_bottle] remove fill_bottle
tag @p[tag=ability,nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] add fill_bottle
item modify entity @p[tag=fill_bottle] weapon.offhand skyblock:subtract_item
give @p[tag=fill_bottle] potion{Potion:"water"}

tag @p[tag=fill_bucket] remove fill_bucket
tag @p[tag=fill_bottle] remove fill_bottle
