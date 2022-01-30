scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add random dummy "Random"
scoreboard objectives add unbreaking dummy "Unbreaking"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 100
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add @s dummy 1
scoreboard players set @s unbreaking 100
scoreboard players operation @s unbreaking /= @s dummy

execute if score @s unbreaking >= @e[limit=1,tag=rng] random run item modify entity @s weapon.mainhand skyblock:damage