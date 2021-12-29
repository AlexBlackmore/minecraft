tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:1}}}] add giant_killer1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:2}}}] add giant_killer2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:3}}}] add giant_killer3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:4}}}] add giant_killer4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:5}}}] add giant_killer5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:6}}}] add giant_killer6
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Giant_Killer:7}}}] add giant_killer7

tellraw @p[tag=giant_killer1] {"text":"[@: Giant Killer I]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer2] {"text":"[@: Giant Killer II]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer3] {"text":"[@: Giant Killer III]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer4] {"text":"[@: Giant Killer IV]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer5] {"text":"[@: Giant Killer V]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer6] {"text":"[@: Giant Killer VI]","italic":true,"color":"gray"}
tellraw @p[tag=giant_killer7] {"text":"[@: Giant Killer VII]","italic":true,"color":"gray"}

scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 100
execute as @p[tag=bonus_damage] run execute store result score @s health run data get entity @s Health

scoreboard players operation @e[tag=target] health /= @p[tag=bonus_damage] health

execute as @e[tag=target] run scoreboard players set @s dummy 100
execute as @e[tag=target] run scoreboard players operation @s health -= @s dummy
execute as @e[tag=target,scores={health=..0}] run scoreboard players set @s health 0

execute as @e[tag=target] run scoreboard players set @s dummy 10
execute as @e[tag=target] run scoreboard players operation @s health /= @s dummy

execute as @e[tag=target,scores={health=5..}] run scoreboard players set @s health 5

execute if entity @p[tag=giant_killer1] run execute as @e[tag=target] run scoreboard players set @s dummy 1
execute if entity @p[tag=giant_killer2] run execute as @e[tag=target] run scoreboard players set @s dummy 2
execute if entity @p[tag=giant_killer3] run execute as @e[tag=target] run scoreboard players set @s dummy 3
execute if entity @p[tag=giant_killer4] run execute as @e[tag=target] run scoreboard players set @s dummy 4
execute if entity @p[tag=giant_killer5] run execute as @e[tag=target] run scoreboard players set @s dummy 5
execute if entity @p[tag=giant_killer6] run execute as @e[tag=target] run scoreboard players set @s dummy 6
execute if entity @p[tag=giant_killer7] run execute as @e[tag=target] run scoreboard players set @s dummy 7

execute as @e[tag=target] run scoreboard players operation @s health *= @s dummy

tellraw @p[tag=bonus_damage] ["",{"text":"[Giant Killer: +","italic":true,"color":"gray"},{"score":{"name":"@e[tag=target,limit=1]","objective":"health"},"italic":true,"color":"gray"},{"text":"% damage]","italic":true,"color":"gray"}]
execute as @p[tag=bonus_damage] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage get
scoreboard players operation @p[tag=bonus_damage] dummy *= @e[tag=target,limit=1] health
execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s dummy

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy /= @s divisor
tellraw @p[tag=bonus_damage] ["",{"text":"[Giant Killer: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor

tag @p[tag=giant_killer1] remove giant_killer1
tag @p[tag=giant_killer2] remove giant_killer2
tag @p[tag=giant_killer3] remove giant_killer3
tag @p[tag=giant_killer4] remove giant_killer4
tag @p[tag=giant_killer5] remove giant_killer5
tag @p[tag=giant_killer6] remove giant_killer6
tag @p[tag=giant_killer7] remove giant_killer7