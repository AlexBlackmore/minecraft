tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Triple_Strike:1}}}] add triple_strike1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Triple_Strike:2}}}] add triple_strike2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Triple_Strike:3}}}] add triple_strike3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Triple_Strike:4}}}] add triple_strike4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Triple_Strike:5}}}] add triple_strike5

tellraw @p[tag=triple_strike1] {"text":"[@: Triple Strike I]","italic":true,"color":"gray"}
tellraw @p[tag=triple_strike2] {"text":"[@: Triple Strike II]","italic":true,"color":"gray"}
tellraw @p[tag=triple_strike3] {"text":"[@: Triple Strike III]","italic":true,"color":"gray"}
tellraw @p[tag=triple_strike4] {"text":"[@: Triple Strike IV]","italic":true,"color":"gray"}
tellraw @p[tag=triple_strike5] {"text":"[@: Triple Strike V]","italic":true,"color":"gray"}


execute as @p[tag=triple_strike1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 10
execute as @p[tag=triple_strike2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 20
execute as @p[tag=triple_strike3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 30
execute as @p[tag=triple_strike4] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 40
execute as @p[tag=triple_strike5] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 50

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

execute if predicate skyblock:triple_strike run tag @e[tag=target] add triple_strike

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Triple Strike: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=triple_strike1] remove triple_strike1
tag @p[tag=triple_strike2] remove triple_strike2
tag @p[tag=triple_strike3] remove triple_strike3
tag @p[tag=triple_strike4] remove triple_strike4
tag @p[tag=triple_strike5] remove triple_strike5