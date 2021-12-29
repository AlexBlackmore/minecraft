tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:1}}}] add prosecute1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:2}}}] add prosecute2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:3}}}] add prosecute3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:4}}}] add prosecute4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:5}}}] add prosecute5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Prosecute:6}}}] add prosecute6

tellraw @p[tag=prosecute1] {"text":"[@: Prosecute I]","italic":true,"color":"gray"}
tellraw @p[tag=prosecute2] {"text":"[@: Prosecute II]","italic":true,"color":"gray"}
tellraw @p[tag=prosecute3] {"text":"[@: Prosecute III]","italic":true,"color":"gray"}
tellraw @p[tag=prosecute4] {"text":"[@: Prosecute IV]","italic":true,"color":"gray"}
tellraw @p[tag=prosecute5] {"text":"[@: Prosecute V]","italic":true,"color":"gray"}
tellraw @p[tag=prosecute6] {"text":"[@: Prosecute VI]","italic":true,"color":"gray"}

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute as @e[tag=target] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=target] run scoreboard players operation @s health /= @s max_health
execute as @e[tag=target] run scoreboard players set @s dummy 10
execute as @e[tag=target] run scoreboard players operation @s health /= @s dummy

execute if entity @p[tag=prosecute1] run execute as @e[tag=target] run scoreboard players set @s dummy 1
execute if entity @p[tag=prosecute2] run execute as @e[tag=target] run scoreboard players set @s dummy 2
execute if entity @p[tag=prosecute3] run execute as @e[tag=target] run scoreboard players set @s dummy 3
execute if entity @p[tag=prosecute4] run execute as @e[tag=target] run scoreboard players set @s dummy 4
execute if entity @p[tag=prosecute5] run execute as @e[tag=target] run scoreboard players set @s dummy 5
execute if entity @p[tag=prosecute6] run execute as @e[tag=target] run scoreboard players set @s dummy 6

execute as @e[tag=target] run scoreboard players operation @s health *= @s dummy
execute as @e[tag=target,scores={health=35..}] run scoreboard players set @s armor 35

execute as @p[tag=bonus_damage] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get
scoreboard players operation @p[tag=bonus_damage] dummy *= @e[tag=target] health

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Prosecute: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=prosecute1] remove prosecute1
tag @p[tag=prosecute2] remove prosecute2
tag @p[tag=prosecute3] remove prosecute3
tag @p[tag=prosecute4] remove prosecute4
tag @p[tag=prosecute5] remove prosecute5
tag @p[tag=prosecute6] remove prosecute6