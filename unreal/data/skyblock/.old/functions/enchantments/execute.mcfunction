tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:1}}}] add execute1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:2}}}] add execute2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:3}}}] add execute3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:4}}}] add execute4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:5}}}] add execute5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Execute:6}}}] add execute6

tellraw @p[tag=execute1] {"text":"[@: Execute I]","italic":true,"color":"gray"}
tellraw @p[tag=execute2] {"text":"[@: Execute II]","italic":true,"color":"gray"}
tellraw @p[tag=execute3] {"text":"[@: Execute III]","italic":true,"color":"gray"}
tellraw @p[tag=execute4] {"text":"[@: Execute IV]","italic":true,"color":"gray"}
tellraw @p[tag=execute5] {"text":"[@: Execute V]","italic":true,"color":"gray"}
tellraw @p[tag=execute6] {"text":"[@: Execute VI]","italic":true,"color":"gray"}

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute as @e[tag=target] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get 100
execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=target] run scoreboard players operation @s max_health -= @s health
execute as @e[tag=target] run scoreboard players operation @s health = @s max_health
execute as @e[tag=target] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @e[tag=target] run scoreboard players operation @s health /= @s max_health
execute as @e[tag=target] run scoreboard players set @s dummy 5
execute as @e[tag=target] run scoreboard players operation @s health /= @s dummy

execute if entity @p[tag=execute1] run execute as @e[tag=target] run scoreboard players set @s dummy 1
execute if entity @p[tag=execute2] run execute as @e[tag=target] run scoreboard players set @s dummy 2
execute if entity @p[tag=execute3] run execute as @e[tag=target] run scoreboard players set @s dummy 3
execute if entity @p[tag=execute4] run execute as @e[tag=target] run scoreboard players set @s dummy 4
execute if entity @p[tag=execute5] run execute as @e[tag=target] run scoreboard players set @s dummy 5
execute if entity @p[tag=execute6] run execute as @e[tag=target] run scoreboard players set @s dummy 6

execute as @e[tag=target] run scoreboard players operation @s health *= @s dummy

execute as @p[tag=bonus_damage] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get
scoreboard players operation @p[tag=bonus_damage] dummy *= @e[tag=target] health

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Execute: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=execute1] remove execute1
tag @p[tag=execute2] remove execute2
tag @p[tag=execute3] remove execute3
tag @p[tag=execute4] remove execute4
tag @p[tag=execute5] remove execute5
tag @p[tag=execute6] remove execute6