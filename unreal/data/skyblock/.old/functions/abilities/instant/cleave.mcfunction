execute at @p[tag=bonus_damage] run tag @e[type=!player,tag=!target,distance=0..3] add cleave
execute at @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Hyper Cleaver"}}}] run tag @e[type=!player,tag=!target,distance=0..4] add cleave

execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Cleaver"}}}] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 40
execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Super Cleaver"}}}] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 45
execute as @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Name:"Hyper Cleaver"}}}] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 50

effect give @e[tag=cleave] glowing 1

scoreboard objectives add health dummy "Health"

execute as @e[tag=cleave] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=cleave] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=cleave] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=cleave] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

execute if entity @e[tag=cleave] run playsound minecraft:entity.experience_orb.pickup player @p[tag=bonus_damage]
scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s attack_damage /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Cleave: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage to nearby mobs]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @e[tag=cleave] remove cleave
scoreboard objectives remove health