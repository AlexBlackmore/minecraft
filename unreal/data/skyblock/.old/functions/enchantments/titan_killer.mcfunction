tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:1}}}] add titan_killer1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:2}}}] add titan_killer2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:3}}}] add titan_killer3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:4}}}] add titan_killer4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:5}}}] add titan_killer5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:6}}}] add titan_killer6
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Titan_Killer:7}}}] add titan_killer7

tellraw @p[tag=titan_killer1] {"text":"[@: Titan Killer I]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer2] {"text":"[@: Titan Killer II]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer3] {"text":"[@: Titan Killer III]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer4] {"text":"[@: Titan Killer IV]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer5] {"text":"[@: Titan Killer V]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer6] {"text":"[@: Titan Killer VI]","italic":true,"color":"gray"}
tellraw @p[tag=titan_killer7] {"text":"[@: Titan Killer VII]","italic":true,"color":"gray"}

scoreboard objectives add armor dummy "Armor"
scoreboard objectives add dummy dummy "Dummy"

execute as @e[tag=target] run execute store result score @s armor run attribute @s minecraft:generic.armor get

execute if entity @p[tag=titan_killer1] run execute as @e[tag=target] run scoreboard players set @s dummy 2
execute if entity @p[tag=titan_killer2] run execute as @e[tag=target] run scoreboard players set @s dummy 4
execute if entity @p[tag=titan_killer3] run execute as @e[tag=target] run scoreboard players set @s dummy 6
execute if entity @p[tag=titan_killer4] run execute as @e[tag=target] run scoreboard players set @s dummy 8
execute if entity @p[tag=titan_killer5] run execute as @e[tag=target] run scoreboard players set @s dummy 10
execute if entity @p[tag=titan_killer6] run execute as @e[tag=target] run scoreboard players set @s dummy 12
execute if entity @p[tag=titan_killer7] run execute as @e[tag=target] run scoreboard players set @s dummy 14

execute as @e[tag=target] run scoreboard players operation @s armor *= @s dummy
execute as @e[tag=target,scores={armor=50..}] run scoreboard players set @s armor 50

execute as @p[tag=bonus_damage] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get
scoreboard players operation @p[tag=bonus_damage] dummy *= @e[tag=target,limit=1] armor
execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Titan Killer: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=titan_killer1] remove titan_killer1
tag @p[tag=titan_killer2] remove titan_killer2
tag @p[tag=titan_killer3] remove titan_killer3
tag @p[tag=titan_killer4] remove titan_killer4
tag @p[tag=titan_killer5] remove titan_killer5
tag @p[tag=titan_killer6] remove titan_killer6
tag @p[tag=titan_killer7] remove titan_killer7