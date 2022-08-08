execute at @p[tag=ability] run particle minecraft:lava ~ ~ ~ 0.5 0 0.5 1 100
xp add @p[tag=ability] -20 points
effect give @p[tag=ability] hunger 1

playsound minecraft:block.lava.extinguish player @p[tag=ability]
tellraw @p[tag=ability] ["",{"text":"[@: Used Splash]","italic":true,"color":"gray"}]
#tellraw @p[tag=ability] {"text":"It's not very effective..."}

#execute at @p[tag=ability] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lava_cauldron[level=3] replace minecraft:lava_cauldron[level=2]
#execute at @p[tag=ability] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lava_cauldron[level=2] replace minecraft:lava_cauldron[level=1]
execute at @p[tag=ability] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lava_cauldron replace minecraft:cauldron
execute at @p[tag=ability] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:stone replace minecraft:water

tag @p[tag=ability,nbt={SelectedItem:{id:"minecraft:bucket"}}] add fill_bucket
item modify entity @p[tag=fill_bucket] weapon.mainhand skyblock:subtract_item
give @p[tag=fill_bucket] lava_bucket
tag @p[tag=fill_bucket] remove fill_bucket
tag @p[tag=ability,nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] add fill_bucket
item modify entity @p[tag=fill_bucket] weapon.offhand skyblock:subtract_item
give @p[tag=fill_bucket] lava_bucket

tag @p[tag=fill_bucket] remove fill_bucket
