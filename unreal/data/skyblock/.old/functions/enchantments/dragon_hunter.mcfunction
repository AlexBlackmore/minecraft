tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Dragon_Hunter:1}}}] add dragon_hunter1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Dragon_Hunter:2}}}] add dragon_hunter2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Dragon_Hunter:3}}}] add dragon_hunter3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Dragon_Hunter:4}}}] add dragon_hunter4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Dragon_Hunter:5}}}] add dragon_hunter5

tellraw @p[tag=dragon_hunter1] {"text":"[@: Dragon Hunter I]","italic":true,"color":"gray"}
tellraw @p[tag=dragon_hunter2] {"text":"[@: Dragon Hunter II]","italic":true,"color":"gray"}
tellraw @p[tag=dragon_hunter3] {"text":"[@: Dragon Hunter III]","italic":true,"color":"gray"}
tellraw @p[tag=dragon_hunter4] {"text":"[@: Dragon Hunter IV]","italic":true,"color":"gray"}
tellraw @p[tag=dragon_hunter5] {"text":"[@: Dragon Hunter V]","italic":true,"color":"gray"}


execute as @p[tag=dragon_hunter1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 8
execute as @p[tag=dragon_hunter2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 16
execute as @p[tag=dragon_hunter3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 24
execute as @p[tag=dragon_hunter4] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 32
execute as @p[tag=dragon_hunter5] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 40

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Dragon Hunter: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=dragon_hunter1] remove dragon_hunter1
tag @p[tag=dragon_hunter2] remove dragon_hunter2
tag @p[tag=dragon_hunter3] remove dragon_hunter3
tag @p[tag=dragon_hunter4] remove dragon_hunter4
tag @p[tag=dragon_hunter5] remove dragon_hunter5