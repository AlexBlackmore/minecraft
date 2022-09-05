tag @s add success
scoreboard objectives add duration dummy "Duration"

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["brewing_stand"]}
item replace entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[0].Duration
scoreboard players set @s dummy 8
scoreboard players operation @s duration *= @s dummy 
scoreboard players set @s dummy 3
scoreboard players operation @s duration /= @s dummy 
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone"}}]}] duration 19200
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Block"}}]}] duration 48000
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] duration 19200
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[0].Duration int 1 run scoreboard players get @s duration

execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[1].Duration
scoreboard players set @s dummy 8
scoreboard players operation @s duration *= @s dummy 
scoreboard players set @s dummy 3
scoreboard players operation @s duration /= @s dummy 
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone"}}]}] duration 19200
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Block"}}]}] duration 48000
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] duration 19200
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[1].Duration int 1 run scoreboard players get @s duration

execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[2].Duration
scoreboard players set @s dummy 8
scoreboard players operation @s duration *= @s dummy 
scoreboard players set @s dummy 3
scoreboard players operation @s duration /= @s dummy 
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone"}}]}] duration 19200
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Block"}}]}] duration 48000
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] duration 19200
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[2].Duration int 1 run scoreboard players get @s duration

execute store result score @s dummy run data get entity @s SelectedItem.tag.Modifiers.Redstone
scoreboard players add @s dummy 1
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.Modifiers.Redstone int 1 run scoreboard players get @s dummy
item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand

playsound minecraft:block.brewing_stand.brew player @s[tag=success]
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

execute as @s run function skyblock:alchemy/construct_lore

kill @e[tag=brewing_stand]
scoreboard objectives remove duration
tag @s remove success
advancement revoke @s only skyblock:commands/alchemy/redstone