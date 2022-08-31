tellraw @s "subtract_arrow"

execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:infinity"}] run tag @s add infinity

scoreboard objectives add random dummy "Random"
execute store result score @s random run data get entity @s Infinite_Quiver 3
execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 100
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy
execute if score @s random >= @e[limit=1,tag=rng] random run tag @s add infinity

tag @s[gamemode=creative] add infinity

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow"}]}] weapon.offhand
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}]}] weapon.offhand
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow"}]}] weapon.offhand
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] weapon.offhand skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:0b,id:"minecraft:arrow"}]}] hotbar.0
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:0b,id:"minecraft:spectral_arrow"}]}] hotbar.0
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:0b,id:"minecraft:tipped_arrow"}]}] hotbar.0
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.0 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:1b,id:"minecraft:arrow"}]}] hotbar.1
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:1b,id:"minecraft:spectral_arrow"}]}] hotbar.1
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:1b,id:"minecraft:tipped_arrow"}]}] hotbar.1
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.1 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:2b,id:"minecraft:arrow"}]}] hotbar.2
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:2b,id:"minecraft:spectral_arrow"}]}] hotbar.2
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:2b,id:"minecraft:tipped_arrow"}]}] hotbar.2
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.2 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:3b,id:"minecraft:arrow"}]}] hotbar.3
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:3b,id:"minecraft:spectral_arrow"}]}] hotbar.3
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:3b,id:"minecraft:tipped_arrow"}]}] hotbar.3
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.3 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:4b,id:"minecraft:arrow"}]}] hotbar.4
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:4b,id:"minecraft:spectral_arrow"}]}] hotbar.4
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:4b,id:"minecraft:tipped_arrow"}]}] hotbar.4
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.4 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:5b,id:"minecraft:arrow"}]}] hotbar.5
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:5b,id:"minecraft:spectral_arrow"}]}] hotbar.5
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:5b,id:"minecraft:tipped_arrow"}]}] hotbar.5
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.5 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:6b,id:"minecraft:arrow"}]}] hotbar.6
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:6b,id:"minecraft:spectral_arrow"}]}] hotbar.6
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:6b,id:"minecraft:tipped_arrow"}]}] hotbar.6
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.6 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:7b,id:"minecraft:arrow"}]}] hotbar.7
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:7b,id:"minecraft:spectral_arrow"}]}] hotbar.7
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.7 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:8b,id:"minecraft:arrow"}]}] hotbar.8
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:8b,id:"minecraft:spectral_arrow"}]}] hotbar.8
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:8b,id:"minecraft:tipped_arrow"}]}] hotbar.8
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] hotbar.8 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:9b,id:"minecraft:arrow"}]}] inventory.0
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:9b,id:"minecraft:spectral_arrow"}]}] inventory.0
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:9b,id:"minecraft:tipped_arrow"}]}] inventory.0
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.0 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:10b,id:"minecraft:arrow"}]}] inventory.1
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:10b,id:"minecraft:spectral_arrow"}]}] inventory.1
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:10b,id:"minecraft:tipped_arrow"}]}] inventory.1
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.1 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:11b,id:"minecraft:arrow"}]}] inventory.2
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:11b,id:"minecraft:spectral_arrow"}]}] inventory.2
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:11b,id:"minecraft:tipped_arrow"}]}] inventory.2
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.2 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:12b,id:"minecraft:arrow"}]}] inventory.3
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:12b,id:"minecraft:spectral_arrow"}]}] inventory.3
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:12b,id:"minecraft:tipped_arrow"}]}] inventory.3
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.3 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:13b,id:"minecraft:arrow"}]}] inventory.4
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:13b,id:"minecraft:spectral_arrow"}]}] inventory.4
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:13b,id:"minecraft:tipped_arrow"}]}] inventory.4
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.4 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:14b,id:"minecraft:arrow"}]}] inventory.5
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:14b,id:"minecraft:spectral_arrow"}]}] inventory.5
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:14b,id:"minecraft:tipped_arrow"}]}] inventory.5
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.5 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:15b,id:"minecraft:arrow"}]}] inventory.6
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:15b,id:"minecraft:spectral_arrow"}]}] inventory.6
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:15b,id:"minecraft:tipped_arrow"}]}] inventory.6
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.6 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:16b,id:"minecraft:arrow"}]}] inventory.7
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:16b,id:"minecraft:spectral_arrow"}]}] inventory.7
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:16b,id:"minecraft:tipped_arrow"}]}] inventory.7
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.7 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:17b,id:"minecraft:arrow"}]}] inventory.8
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:17b,id:"minecraft:spectral_arrow"}]}] inventory.8
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:17b,id:"minecraft:tipped_arrow"}]}] inventory.8
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.8 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:18b,id:"minecraft:arrow"}]}] inventory.9
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:18b,id:"minecraft:spectral_arrow"}]}] inventory.9
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:18b,id:"minecraft:tipped_arrow"}]}] inventory.9
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.9 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:19b,id:"minecraft:arrow"}]}] inventory.10
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:19b,id:"minecraft:spectral_arrow"}]}] inventory.10
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:19b,id:"minecraft:tipped_arrow"}]}] inventory.10
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.10 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:20b,id:"minecraft:arrow"}]}] inventory.11
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:20b,id:"minecraft:spectral_arrow"}]}] inventory.11
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:20b,id:"minecraft:tipped_arrow"}]}] inventory.11
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.11 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:21b,id:"minecraft:arrow"}]}] inventory.12
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:21b,id:"minecraft:spectral_arrow"}]}] inventory.12
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:21b,id:"minecraft:tipped_arrow"}]}] inventory.12
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.12 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:22b,id:"minecraft:arrow"}]}] inventory.13
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:22b,id:"minecraft:spectral_arrow"}]}] inventory.13
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:22b,id:"minecraft:tipped_arrow"}]}] inventory.13
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.13 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:23b,id:"minecraft:arrow"}]}] inventory.14
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:23b,id:"minecraft:spectral_arrow"}]}] inventory.14
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:23b,id:"minecraft:tipped_arrow"}]}] inventory.14
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.14 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:24b,id:"minecraft:arrow"}]}] inventory.15
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:24b,id:"minecraft:spectral_arrow"}]}] inventory.15
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:24b,id:"minecraft:tipped_arrow"}]}] inventory.15
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.15 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:25b,id:"minecraft:arrow"}]}] inventory.16
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:25b,id:"minecraft:spectral_arrow"}]}] inventory.16
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:25b,id:"minecraft:tipped_arrow"}]}] inventory.16
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.16 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:26b,id:"minecraft:arrow"}]}] inventory.17
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:26b,id:"minecraft:spectral_arrow"}]}] inventory.17
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:26b,id:"minecraft:tipped_arrow"}]}] inventory.17
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.17 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:27b,id:"minecraft:arrow"}]}] inventory.18
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:27b,id:"minecraft:spectral_arrow"}]}] inventory.18
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:27b,id:"minecraft:tipped_arrow"}]}] inventory.18
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.18 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:28b,id:"minecraft:arrow"}]}] inventory.19
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:28b,id:"minecraft:spectral_arrow"}]}] inventory.19
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:28b,id:"minecraft:tipped_arrow"}]}] inventory.19
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.19 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:29b,id:"minecraft:arrow"}]}] inventory.20
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:29b,id:"minecraft:spectral_arrow"}]}] inventory.20
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:29b,id:"minecraft:tipped_arrow"}]}] inventory.20
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.20 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:30b,id:"minecraft:arrow"}]}] inventory.21
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:30b,id:"minecraft:spectral_arrow"}]}] inventory.21
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:30b,id:"minecraft:tipped_arrow"}]}] inventory.21
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.21 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:31b,id:"minecraft:arrow"}]}] inventory.22
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:31b,id:"minecraft:spectral_arrow"}]}] inventory.22
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:31b,id:"minecraft:tipped_arrow"}]}] inventory.22
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.22 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:32b,id:"minecraft:arrow"}]}] inventory.23
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:32b,id:"minecraft:spectral_arrow"}]}] inventory.23
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:32b,id:"minecraft:tipped_arrow"}]}] inventory.23
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.23 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:33b,id:"minecraft:arrow"}]}] inventory.24
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:33b,id:"minecraft:spectral_arrow"}]}] inventory.24
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:33b,id:"minecraft:tipped_arrow"}]}] inventory.24
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.24 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:34b,id:"minecraft:arrow"}]}] inventory.25
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:34b,id:"minecraft:spectral_arrow"}]}] inventory.25
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:34b,id:"minecraft:tipped_arrow"}]}] inventory.25
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.25 skyblock:subtract_item
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run tag @s add arrow

item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:35b,id:"minecraft:arrow"}]}] inventory.26
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:35b,id:"minecraft:spectral_arrow"}]}] inventory.26
item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=!arrow,nbt={Inventory:[{Slot:35b,id:"minecraft:tipped_arrow"}]}] inventory.26
execute if data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item modify entity @s[tag=!infinity,tag=!arrow] inventory.26 skyblock:subtract_item

execute if entity @s[gamemode=creative] unless data entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].id run item replace entity @e[tag=motion,limit=1,sort=nearest] weapon.mainhand with minecraft:arrow 

tag @s[tag=arrow] remove arrow
tag @s[tag=infinity] remove infinity