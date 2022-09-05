tag @s add success
scoreboard objectives add amplifier dummy "Amplifier"
scoreboard objectives add duration dummy "Duration"

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["brewing_stand"]}
item replace entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute store result score @s amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[0].Amplifier
execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[0].Duration
scoreboard players add @s amplifier 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] amplifier 2
scoreboard players set @s dummy 2
scoreboard players operation @s duration /= @s dummy 
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone Dust"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] run scoreboard players operation @s duration *= @s dummy
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[0].Amplifier int 1 run scoreboard players get @s amplifier
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[0].Duration int 1 run scoreboard players get @s duration

execute store result score @s amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[1].Amplifier
execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[1].Duration
scoreboard players add @s amplifier 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] amplifier 2
scoreboard players set @s dummy 2
scoreboard players operation @s duration /= @s dummy 
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone Dust"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] run scoreboard players operation @s duration *= @s dummy
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[1].Amplifier int 1 run scoreboard players get @s amplifier
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[1].Duration int 1 run scoreboard players get @s duration

execute store result score @s amplifier run data get entity @s SelectedItem.tag.CustomPotionEffects[2].Amplifier
execute store result score @s duration run data get entity @s SelectedItem.tag.CustomPotionEffects[2].Duration
scoreboard players add @s amplifier 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] amplifier 2
scoreboard players set @s dummy 2
scoreboard players operation @s duration /= @s dummy 
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone Dust"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Glowstone"}}]}] run scoreboard players operation @s duration *= @s dummy
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] run scoreboard players operation @s duration *= @s dummy
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[2].Amplifier int 1 run scoreboard players get @s amplifier
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects[2].Duration int 1 run scoreboard players get @s duration

execute store result score @s dummy run data get entity @s SelectedItem.tag.Modifiers.Glowstone
scoreboard players add @s dummy 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] dummy 2
execute store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.Modifiers.Glowstone int 1 run scoreboard players get @s dummy
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] dummy 2
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Redstone Lamp"}}]}] store result entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.Modifiers.Redstone int 1 run scoreboard players get @s dummy

playsound minecraft:block.brewing_stand.brew player @s
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand

execute as @s run function skyblock:alchemy/construct_lore

kill @e[tag=brewing_stand]
scoreboard objectives remove amplifier
tag @s remove success
advancement revoke @s only skyblock:commands/alchemy/glowstone