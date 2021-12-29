tag @p[advancements={skyblock:commands/enchantments/thunderbolt=true}] add thunderbolt

tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:1}}}] add thunderbolt1
tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:2}}}] add thunderbolt2
tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:3}}}] add thunderbolt3
tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:4}}}] add thunderbolt4
tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:5}}}] add thunderbolt5
tag @p[tag=thunderbolt,nbt={SelectedItem:{tag:{Thunderbolt:6}}}] add thunderbolt6

tellraw @p[tag=thunderbolt1] {"text":"[@: Thunderbolt I]","italic":true,"color":"gray"}
tellraw @p[tag=thunderbolt2] {"text":"[@: Thunderbolt II]","italic":true,"color":"gray"}
tellraw @p[tag=thunderbolt3] {"text":"[@: Thunderbolt III]","italic":true,"color":"gray"}
tellraw @p[tag=thunderbolt4] {"text":"[@: Thunderbolt IV]","italic":true,"color":"gray"}
tellraw @p[tag=thunderbolt5] {"text":"[@: Thunderbolt V]","italic":true,"color":"gray"}
tellraw @p[tag=thunderbolt6] {"text":"[@: Thunderbolt VI]","italic":true,"color":"gray"}

execute at @p[tag=thunderbolt] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player] add thunderbolt_mob
execute at @e[tag=thunderbolt_mob] run tag @e[type=!player,distance=0..2] add thunderbolt_mob
execute at @e[tag=thunderbolt_mob] run summon lightning_bolt

scoreboard objectives add damage dummy "Damage"
execute as @p[tag=thunderbolt1] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.15
execute as @p[tag=thunderbolt2] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.30
execute as @p[tag=thunderbolt3] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.45
execute as @p[tag=thunderbolt4] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.60
execute as @p[tag=thunderbolt5] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.75
execute as @p[tag=thunderbolt6] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.90

tellraw @p[tag=thunderbolt] ["",{"text":"[Thunderbolt: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

scoreboard objectives add health dummy "Health"
execute as @e[tag=thunderbolt_mob] run execute store result score @s health run data get entity @s Health
execute as @e[tag=thunderbolt_mob] run execute if score @s health < @p[tag=thunderbolt] damage run kill @s
execute as @e[tag=thunderbolt_mob] run scoreboard players operation @s health -= @p[tag=thunderbolt] damage
execute as @e[tag=thunderbolt_mob] run execute store result entity @s Health float 1 run scoreboard players get @s health

scoreboard objectives remove damage
scoreboard objectives remove health
tag @e[tag=thunderbolt_mob] remove thunderbolt_mob
tag @p[tag=thunderbolt1] remove thunderbolt1
tag @p[tag=thunderbolt2] remove thunderbolt2
tag @p[tag=thunderbolt3] remove thunderbolt3
tag @p[tag=thunderbolt4] remove thunderbolt4
tag @p[tag=thunderbolt5] remove thunderbolt5
tag @p[tag=thunderbolt6] remove thunderbolt6
advancement revoke @p[tag=thunderbolt] only skyblock:commands/enchantments/thunderbolt
tag @p[tag=thunderbolt] remove thunderbolt