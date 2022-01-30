tag @p[advancements={skyblock:commands/using_shortbow=true}] add bow
advancement revoke @p[tag=bow] only skyblock:commands/using_shortbow
execute if entity @e[type=#minecraft:arrows,distance=0..9,nbt={inGround:0b}] run tag @p[tag=bow] remove bow

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

#execute at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["calc"],Passengers:[{id:"minecraft:armor_stand",Tags:["projectile"],Marker:true,Invulnerable:true}]}
execute at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["calc"]}
execute at @p[tag=bow] run summon armor_stand ^ ^ ^1.8 {Tags:["motion"]}

execute store result score @e[tag=calc,limit=1] x run data get entity @e[tag=motion,limit=1] Pos[0] 100
execute store result score @e[tag=calc,limit=1] y run data get entity @e[tag=motion,limit=1] Pos[1] 100
execute store result score @e[tag=calc,limit=1] z run data get entity @e[tag=motion,limit=1] Pos[2] 100

execute store result score @p[tag=bow] x run data get entity @p[tag=bow] Pos[0] 100
execute store result score @p[tag=bow] y run data get entity @p[tag=bow] Pos[1] 100
execute store result score @p[tag=bow] z run data get entity @p[tag=bow] Pos[2] 100

scoreboard players operation @e[tag=calc] x -= @p[tag=bow] x
scoreboard players operation @e[tag=calc] y -= @p[tag=bow] y
scoreboard players operation @e[tag=calc] z -= @p[tag=bow] z

execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=calc,limit=1] run execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

scoreboard objectives add owner dummy "Owner"
execute as @e[tag=calc] run data merge entity @s {Owner:[I;0,0,0,0]}
execute as @e[tag=calc] run execute store result score @s owner run data get entity @p[tag=bow] UUID[0]
execute as @e[tag=calc] run execute store result entity @s Owner[0] int 1 run scoreboard players get @s owner
execute as @e[tag=calc] run execute store result score @s owner run data get entity @p[tag=bow] UUID[1]
execute as @e[tag=calc] run execute store result entity @s Owner[1] int 1 run scoreboard players get @s owner
execute as @e[tag=calc] run execute store result score @s owner run data get entity @p[tag=bow] UUID[2]
execute as @e[tag=calc] run execute store result entity @s Owner[2] int 1 run scoreboard players get @s owner
execute as @e[tag=calc] run execute store result score @s owner run data get entity @p[tag=bow] UUID[3]
execute as @e[tag=calc] run execute store result entity @s Owner[3] int 1 run scoreboard players get @s owner
scoreboard objectives remove owner

scoreboard objectives add damage dummy "Damage"
scoreboard objectives add power dummy "Power Level"
scoreboard players set @p[tag=bow] damage 20
execute if data entity @p[tag=bow] SelectedItem.tag.Enchantments[{id:"minecraft:power"}] run scoreboard players add @p[tag=bow] damage 5
execute store result score @p[tag=bow] power run data get entity @p[tag=bow] SelectedItem.tag.Enchantments[{id:"minecraft:power"}].lvl 5
execute as @p[tag=bow] run scoreboard players operation @s damage += @s power
execute store result entity @e[limit=1,tag=calc] damage double 0.1 run scoreboard players get @p[tag=bow] damage  
scoreboard objectives remove damage
scoreboard objectives remove power

scoreboard objectives add piercing dummy "Piercing Level"
execute store result score @p piercing run data get entity @p SelectedItem.tag.Enchantments[{id:"minecraft:piercing"}].lvl
scoreboard players add @p[tag=bow] piercing 1
execute store result entity @e[limit=1,tag=calc] PierceLevel byte 1 run scoreboard players get @p[tag=bow] piercing
scoreboard objectives remove piercing

execute at @e[tag=calc] run execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Juju Shortbow"}}}] run tag @e[type=armor_stand,limit=1,sort=nearest] add juju_shortbow
execute at @e[tag=calc] run kill @e[tag=projectile,tag=!juju_shortbow,limit=1,sort=nearest] 

execute as @p[tag=bow] run function skyblock:reduce_durability
playsound minecraft:entity.arrow.shoot player @p[tag=bow]

kill @e[tag=motion]
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
