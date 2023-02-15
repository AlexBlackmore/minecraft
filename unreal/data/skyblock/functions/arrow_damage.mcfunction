#tellraw @p "arrow_damage"

scoreboard objectives add owner dummy "Owner"
execute as @e[type=#minecraft:arrows,tag=!shot] run execute store result score @s owner run data get entity @s Owner[0]
execute as @p[tag=bow] run execute store result score @s owner run data get entity @s UUID[0]
execute as @e[type=#minecraft:arrows,tag=!shot,nbt={inGround:0b}] run execute if score @s owner = @p[tag=bow] owner run tag @s add calc
scoreboard objectives remove owner
execute unless entity @e[tag=calc] run tag @p[tag=bow] remove bow

scoreboard objectives add attack_damage dummy "Attack Damage"
scoreboard objectives add color dummy "Potion Color"
scoreboard objectives add damage dummy "Damage"
scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute as @e[tag=calc] run execute store result score @s color run data get entity @s Color

execute if entity @e[tag=calc,scores={color=1}] at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["temp"],Color:0,crit:0,Passengers:[{id:"minecraft:armor_stand",Tags:["projectile","explosive_arrow"],Invulnerable:true,Invisible:true,Marker:true}],Owner:[I;0,0,0,0]}
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Explosive Bow"}}}] at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["temp"],Color:0,crit:0,Passengers:[{id:"minecraft:armor_stand",Tags:["projectile","explosive_arrow"],Invulnerable:true,Invisible:true,Marker:true}],Owner:[I;0,0,0,0]}

execute as @e[tag=temp] run execute store result score @s owner run data get entity @p[tag=bow] UUID[0]
execute as @e[tag=temp] run execute store result entity @s Owner[0] int 1 run scoreboard players get @s owner
execute as @e[tag=temp] run execute store result score @s owner run data get entity @p[tag=bow] UUID[1]
execute as @e[tag=temp] run execute store result entity @s Owner[1] int 1 run scoreboard players get @s owner
execute as @e[tag=temp] run execute store result score @s owner run data get entity @p[tag=bow] UUID[2]
execute as @e[tag=temp] run execute store result entity @s Owner[2] int 1 run scoreboard players get @s owner
execute as @e[tag=temp] run execute store result score @s owner run data get entity @p[tag=bow] UUID[3]
execute as @e[tag=temp] run execute store result entity @s Owner[3] int 1 run scoreboard players get @s owner

execute as @e[tag=temp] run execute store result score @s x run data get entity @e[tag=calc,limit=1,sort=nearest] Motion[0] 100
execute as @e[tag=temp] run execute store result score @s y run data get entity @e[tag=calc,limit=1,sort=nearest] Motion[1] 100
execute as @e[tag=temp] run execute store result score @s z run data get entity @e[tag=calc,limit=1,sort=nearest] Motion[2] 100
execute as @e[tag=temp] run execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=temp] run execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=temp] run execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

execute as @e[tag=temp] run execute store result score @s x run data get entity @e[tag=calc,limit=1,sort=nearest] Rotation[0] 100
execute as @e[tag=temp] run execute store result score @s y run data get entity @e[tag=calc,limit=1,sort=nearest] Rotation[1] 100
execute as @e[tag=temp] run execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x
execute as @e[tag=temp] run execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y

execute as @e[tag=temp] run execute store result score @s x run data get entity @e[tag=calc,limit=1,sort=nearest] Fire
execute as @e[tag=temp] run execute store result entity @s Fire short 1 run scoreboard players get @s x

execute as @e[tag=temp] run execute store result score @s damage run data get entity @e[tag=calc,limit=1,sort=nearest] damage 10
execute as @e[tag=temp] run execute store result entity @s damage double 0.1 run scoreboard players get @s damage

execute as @e[tag=temp] run execute store result score @s x run data get entity @e[tag=calc,limit=1,sort=nearest] crit
execute as @e[tag=temp] run execute store result entity @s crit byte 1 run scoreboard players get @s x

execute as @e[tag=temp] run execute store result score @s color run data get entity @e[tag=calc,limit=1,sort=nearest] color
execute as @e[tag=temp] run execute store result entity @s color int 1 run scoreboard players get @s color

execute as @e[tag=temp] run execute store result score @s x run data get entity @e[tag=calc,limit=1,sort=nearest] PierceLevel
execute as @e[tag=temp] run execute store result entity @s PierceLevel byte 1 run scoreboard players get @s x

execute if entity @e[tag=temp] run kill @e[tag=calc]
tag @e[tag=temp] add calc
tag @e[tag=temp] remove temp

execute as @e[tag=calc] run execute store result score @s damage run data get entity @s damage
execute as @p[tag=bow] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get

execute as @e[tag=calc] run scoreboard players operation @s damage += @p[tag=bow] attack_damage

execute as @e[tag=calc,scores={color=11184810}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=16777045}] run scoreboard players add @s damage 2
execute as @e[tag=calc,scores={color=16733525}] run scoreboard players add @s damage 3
execute as @e[tag=calc,scores={color=43520}] run scoreboard players add @s damage 4
execute as @e[tag=calc,scores={color=5635925}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=5636095}] run scoreboard players add @s damage 5
execute as @e[tag=calc,scores={color=14538245}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=1}] run scoreboard players add @s damage 1
execute as @e[tag=calc,scores={color=16777215}] run scoreboard players add @s damage 3
execute as @e[tag=calc,scores={color=43537}] run scoreboard players add @s damage 1

execute as @e[tag=calc,scores={color=43537}] run data merge entity @s {PierceLevel:5}

execute as @e[tag=calc] run execute store result entity @s damage double 1 run scoreboard players get @s damage
scoreboard players operation @p[tag=bow] damage = @e[tag=calc,limit=1,sort=nearest] damage
tellraw @p[tag=bow] ["",{"text":"[Arrow: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Sniper Bow"}}}] run execute as @e[tag=calc] run data merge entity @s {NoGravity:true}


#Runes
execute if data entity @p[tag=bow] SelectedItem.tag.Rune run tag @e[tag=calc] add rune
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Lava"}}}] run tag @e[tag=calc] add lava
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Lavatears"}}}] run tag @e[tag=calc] add lavatears
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Gem"}}}] run tag @e[tag=calc] add gem
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Bite"}}}] run tag @e[tag=calc] add bite
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Wake"}}}] run tag @e[tag=calc] add wake
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Ice"}}}] run tag @e[tag=calc] add ice
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"White Spiral"}}}] run tag @e[tag=calc] add white_spiral
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Flame"}}}] run tag @e[tag=calc] add flame
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Golden"}}}] run tag @e[tag=calc] add golden
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Smokey"}}}] run tag @e[tag=calc] add smokey
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"Magical"}}}] run tag @e[tag=calc] add magical
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Rune:"End"}}}] run tag @e[tag=calc] add end


tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

#execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Terminator"}}}] run function skyblock:abilities/terminator
#execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Runaan's Bow"}}}] run function skyblock:abilities/instant/triple_shot
#execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] run function skyblock:abilities/soulstealer_bow
#execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Hurricane Bow"}}}] run function skyblock:abilities/instant/tempest

#execute if entity @e[tag=projectile] run schedule function skyblock:projectile 1t replace

scoreboard objectives remove damage
scoreboard objectives remove power
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove color

tag @p[tag=bow] remove bow