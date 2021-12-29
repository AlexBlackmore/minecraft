tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:1}}}] add cubism1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:2}}}] add cubism2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:3}}}] add cubism3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:4}}}] add cubism4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:5}}}] add cubism5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Cubism:6}}}] add cubism6

tellraw @p[tag=cubism1] {"text":"[@: Cubism I]","italic":true,"color":"gray"}
tellraw @p[tag=cubism2] {"text":"[@: Cubism II]","italic":true,"color":"gray"}
tellraw @p[tag=cubism3] {"text":"[@: Cubism III]","italic":true,"color":"gray"}
tellraw @p[tag=cubism4] {"text":"[@: Cubism IV]","italic":true,"color":"gray"}
tellraw @p[tag=cubism5] {"text":"[@: Cubism V]","italic":true,"color":"gray"}
tellraw @p[tag=cubism6] {"text":"[@: Cubism VI]","italic":true,"color":"gray"}


execute as @p[tag=cubism1] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 10
execute as @p[tag=cubism2] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 20
execute as @p[tag=cubism3] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 30
execute as @p[tag=cubism4] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 40
execute as @p[tag=cubism5] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 50
execute as @p[tag=cubism6] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get 60

execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Cubism: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=cubism1] remove cubism1
tag @p[tag=cubism2] remove cubism2
tag @p[tag=cubism3] remove cubism3
tag @p[tag=cubism4] remove cubism4
tag @p[tag=cubism5] remove cubism5
tag @p[tag=cubism6] remove cubism6