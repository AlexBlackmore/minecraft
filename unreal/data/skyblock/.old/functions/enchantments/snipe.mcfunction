tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Snipe:1}}}] add snipe1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Snipe:2}}}] add snipe2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Snipe:3}}}] add snipe3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Snipe:4}}}] add snipe4

tellraw @p[tag=snipe1] {"text":"[@: Snipe I]","italic":true,"color":"gray"}
tellraw @p[tag=snipe2] {"text":"[@: Snipe II]","italic":true,"color":"gray"}
tellraw @p[tag=snipe3] {"text":"[@: Snipe III]","italic":true,"color":"gray"}
tellraw @p[tag=snipe4] {"text":"[@: Snipe IV]","italic":true,"color":"gray"}

scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add distance dummy "Distance"

execute as @p[tag=snipe1] run scoreboard players set @s dummy 1
execute as @p[tag=snipe2] run scoreboard players set @s dummy 2
execute as @p[tag=snipe3] run scoreboard players set @s dummy 3
execute as @p[tag=snipe4] run scoreboard players set @s dummy 4

execute as @p[tag=bonus_damage] run scoreboard players set @s distance 0
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=10..19] run scoreboard players set @s distance 1
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=20..29] run scoreboard players set @s distance 2
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=30..39] run scoreboard players set @s distance 3
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=40..49] run scoreboard players set @s distance 4
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=50..59] run scoreboard players set @s distance 5
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=60..69] run scoreboard players set @s distance 6
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=70..79] run scoreboard players set @s distance 7
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=80..89] run scoreboard players set @s distance 8
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=90..99] run scoreboard players set @s distance 9
execute as @p[tag=bonus_damage] run execute at @s run execute if entity @e[tag=target,distance=100..] run scoreboard players set @s distance 10

execute as @p[tag=bonus_damage] run scoreboard players operation @s distance *= @s dummy

execute as @p[tag=bonus_damage] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy *= @s distance

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy


scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Snipe: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=snipe1] remove snipe1
tag @p[tag=snipe2] remove snipe2
tag @p[tag=snipe3] remove snipe3
tag @p[tag=snipe4] remove snipe4
scoreboard objectives remove distance