#tellraw @p "shoot_arrow"

tag @s add bow
#advancement revoke @s only skyblock:commands/using_shortbow
schedule function skyblock:reset_using_shortbow 10t replace
execute if entity @e[type=#minecraft:arrows,distance=0..9,nbt={inGround:0b}] run tag @s remove bow

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute at @s run summon armor_stand ^ ^ ^1.8 {Tags:["motion"]}
execute as @s run function skyblock:subtract_arrow

execute at @s if entity @e[tag=motion,limit=1,sort=nearest,nbt={HandItems:[{id:"minecraft:arrow"}]}] run summon minecraft:arrow ~ ~1.7 ~ {Tags:["calc"]}
execute at @s if entity @e[tag=motion,limit=1,sort=nearest,nbt={HandItems:[{id:"minecraft:spectral_arrow"}]}] run summon minecraft:spectral_arrow ~ ~1.7 ~ {Tags:["calc"]}
execute at @s if entity @e[tag=motion,limit=1,sort=nearest,nbt={HandItems:[{id:"minecraft:tipped_arrow"}]}] run summon minecraft:arrow ~ ~1.7 ~ {Tags:["calc"],Color:0,Potion:"minecraft:empty",CustomPotionEffects:[]}

execute store result score @e[tag=calc,limit=1,sort=nearest] x run data get entity @e[tag=motion,limit=1] Pos[0] 100
execute store result score @e[tag=calc,limit=1,sort=nearest] y run data get entity @e[tag=motion,limit=1] Pos[1] 100
execute store result score @e[tag=calc,limit=1,sort=nearest] z run data get entity @e[tag=motion,limit=1] Pos[2] 100

execute store result score @s x run data get entity @s Pos[0] 100
execute store result score @s y run data get entity @s Pos[1] 100
execute store result score @s z run data get entity @s Pos[2] 100

scoreboard players operation @e[tag=calc] x -= @s x
scoreboard players operation @e[tag=calc] y -= @s y
scoreboard players operation @e[tag=calc] z -= @s z

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

data modify entity @e[type=minecraft:arrow,tag=calc,limit=1,sort=nearest] Potion set from entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].tag.Potion
data modify entity @e[type=minecraft:arrow,tag=calc,limit=1,sort=nearest] CustomPotionEffects set from entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].tag.CustomPotionEffects
data modify entity @e[type=minecraft:arrow,tag=calc,limit=1,sort=nearest] Color set from entity @e[tag=motion,limit=1,sort=nearest] HandItems[0].tag.CustomPotionColor

execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:flame"}] run data modify entity @e[tag=calc,limit=1,sort=nearest] Fire set value 2000

scoreboard objectives add power dummy "Power Level"
scoreboard objectives add damage dummy "Damage"
scoreboard players set @s damage 20
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:power"}] run scoreboard players add @s damage 10
execute store result score @p power run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:power"}].lvl 5
scoreboard players remove @s[scores={power=10..}] power 5
scoreboard players operation @s damage += @s power 
execute store result entity @e[tag=calc,limit=1,sort=nearest] damage double 0.1 run scoreboard players get @s damage

execute as @s run function skyblock:reduce_durability
playsound minecraft:entity.arrow.shoot player @s

kill @e[tag=motion]
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z


execute as @s at @s run function skyblock:arrow_damage