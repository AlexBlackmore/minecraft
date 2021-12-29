tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Impaling:1}}}] add impaling1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Impaling:2}}}] add impaling2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Impaling:3}}}] add impaling3

tellraw @p[tag=impaling1] {"text":"[@: Impaling I]","italic":true,"color":"gray"}
tellraw @p[tag=impaling2] {"text":"[@: Impaling II]","italic":true,"color":"gray"}
tellraw @p[tag=impaling3] {"text":"[@: Impaling III]","italic":true,"color":"gray"}


execute as @p[tag=impaling1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 12.5
execute as @p[tag=impaling2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 25
execute as @p[tag=impaling3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 37.5

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Impaling: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=impaling1] remove impaling1
tag @p[tag=impaling2] remove impaling2
tag @p[tag=impaling3] remove impaling3