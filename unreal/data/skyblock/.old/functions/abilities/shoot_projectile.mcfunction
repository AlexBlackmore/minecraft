scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

tag @p[tag=fire_blast,nbt={SelectedItem:{tag:{Name:"Ember Rod"}}}] add ability

execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] run summon snowball ^ ^1.4 ^ {Tags:["calc"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],Rotation:[0f,0f],HasVisualFire:1b,NoGravity:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["ice_bolt_projectile"]}]}
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Ember Rod"}}}] run summon fireball ^ ^1.4 ^ {Tags:["calc"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],Rotation:[0f,0f],HasVisualFire:1b,NoGravity:1b}
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] run summon snowball ^ ^1.4 ^ {Tags:["calc"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],Rotation:[0f,0f],HasVisualFire:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["ink_bomb_projectile"]}]}
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] run summon snowball ^ ^1.4 ^ {Tags:["calc"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],Rotation:[0f,0f],HasVisualFire:1b,NoGravity:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["showtime_projectile"]}]}
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] run summon snowball ^ ^1.4 ^ {Tags:["calc"],Owner:[I;0,0,0,0],Motion:[0d,0d,0d],Rotation:[0f,0f],Fire:20b,NoGravity:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["guided_bat_projectile"]}]}


execute at @p[tag=ability] run summon armor_stand ^ ^ ^1.8 {Tags:["motion"]}

execute as @e[tag=calc] run execute store result score @s x run data get entity @e[tag=motion,limit=1,sort=nearest] Pos[0] 100
execute as @e[tag=calc] run execute store result score @s y run data get entity @e[tag=motion,limit=1,sort=nearest] Pos[1] 100
execute as @e[tag=calc] run execute store result score @s z run data get entity @e[tag=motion,limit=1,sort=nearest] Pos[2] 100

execute store result score @p[tag=ability] x run data get entity @p[tag=ability] Pos[0] 100
execute store result score @p[tag=ability] y run data get entity @p[tag=ability] Pos[1] 100
execute store result score @p[tag=ability] z run data get entity @p[tag=ability] Pos[2] 100

scoreboard players operation @e[tag=calc] x -= @p[tag=ability] x
scoreboard players operation @e[tag=calc] y -= @p[tag=ability] y
scoreboard players operation @e[tag=calc] z -= @p[tag=ability] z

execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

execute as @e[tag=calc] run data modify entity @s Rotation[0] set from entity @p[tag=ability] Rotation[0]
execute as @e[tag=calc] run data modify entity @s Rotation[1] set from entity @p[tag=ability] Rotation[1]

kill @e[tag=motion]
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z


execute as @e[tag=calc] run data modify entity @s Owner[0] set from entity @p[tag=ability] UUID[0]
execute as @e[tag=calc] run data modify entity @s Owner[1] set from entity @p[tag=ability] UUID[1]
execute as @e[tag=calc] run data modify entity @s Owner[2] set from entity @p[tag=ability] UUID[2]
execute as @e[tag=calc] run data modify entity @s Owner[3] set from entity @p[tag=ability] UUID[3]

tag @e[tag=calc] add shot
tag @e[tag=calc,tag=shot] remove calc


execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] run playsound minecraft:block.glass.break player @p
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Ember Rod"}}}] run playsound minecraft:entity.ghast.shoot player @p
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] run playsound minecraft:entity.squid.squirt player @p
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] run playsound minecraft:entity.firework_rocket.launch player @p
execute at @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] run playsound entity.bat.ambient player @p

tag @p[tag=fire_blast,nbt={SelectedItem:{tag:{Name:"Ember Rod"}}}] remove ability