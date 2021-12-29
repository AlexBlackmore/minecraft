tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{First_Strike:1}}}] add first_strike1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{First_Strike:2}}}] add first_strike2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{First_Strike:3}}}] add first_strike3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{First_Strike:4}}}] add first_strike4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{First_Strike:5}}}] add first_strike5

tellraw @p[tag=first_strike1] {"text":"[@: First Strike I]","italic":true,"color":"gray"}
tellraw @p[tag=first_strike2] {"text":"[@: First Strike II]","italic":true,"color":"gray"}
tellraw @p[tag=first_strike3] {"text":"[@: First Strike III]","italic":true,"color":"gray"}
tellraw @p[tag=first_strike4] {"text":"[@: First Strike IV]","italic":true,"color":"gray"}
tellraw @p[tag=first_strike5] {"text":"[@: First Strike V]","italic":true,"color":"gray"}


execute as @p[tag=first_strike1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 25
execute as @p[tag=first_strike2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 50
execute as @p[tag=first_strike3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 75
execute as @p[tag=first_strike4] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 100
execute as @p[tag=first_strike5] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 125

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy
tag @e[tag=target] add first_strike

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[First Strike: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=first_strike1] remove first_strike1
tag @p[tag=first_strike2] remove first_strike2
tag @p[tag=first_strike3] remove first_strike3
tag @p[tag=first_strike4] remove first_strike4
tag @p[tag=first_strike5] remove first_strike5