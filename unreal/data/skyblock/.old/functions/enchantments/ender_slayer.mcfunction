tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:1}}}] add ender_slayer1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:2}}}] add ender_slayer2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:3}}}] add ender_slayer3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:4}}}] add ender_slayer4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:5}}}] add ender_slayer5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:6}}}] add ender_slayer6
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Ender_Slayer:7}}}] add ender_slayer7

tellraw @p[tag=ender_slayer1] {"text":"[@: Ender Slayer I]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer2] {"text":"[@: Ender Slayer II]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer3] {"text":"[@: Ender Slayer III]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer4] {"text":"[@: Ender Slayer IV]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer5] {"text":"[@: Ender Slayer V]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer6] {"text":"[@: Ender Slayer VI]","italic":true,"color":"gray"}
tellraw @p[tag=ender_slayer7] {"text":"[@: Ender Slayer VII]","italic":true,"color":"gray"}


execute as @p[tag=ender_slayer1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 12
execute as @p[tag=ender_slayer2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 24
execute as @p[tag=ender_slayer3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 36
execute as @p[tag=ender_slayer4] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 48
execute as @p[tag=ender_slayer5] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 60
execute as @p[tag=ender_slayer6] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 72
execute as @p[tag=ender_slayer7] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 84

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Ender Slayer: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=ender_slayer1] remove ender_slayer1
tag @p[tag=ender_slayer2] remove ender_slayer2
tag @p[tag=ender_slayer3] remove ender_slayer3
tag @p[tag=ender_slayer4] remove ender_slayer4
tag @p[tag=ender_slayer5] remove ender_slayer5
tag @p[tag=ender_slayer6] remove ender_slayer6
tag @p[tag=ender_slayer7] remove ender_slayer7