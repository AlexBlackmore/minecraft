tag @p[advancements={skyblock:commands/enchantments/thunderlord=true}] add thunderlord
execute at @p[tag=thunderlord] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add thunderlord_mob

tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:1}}}] add thunderlord1
tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:2}}}] add thunderlord2
tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:3}}}] add thunderlord3
tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:4}}}] add thunderlord4
tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:5}}}] add thunderlord5
tag @p[tag=thunderlord,nbt={SelectedItem:{tag:{Thunderlord:6}}}] add thunderlord6

tellraw @p[tag=thunderlord1] {"text":"[@: Thunderlord I]","italic":true,"color":"gray"}
tellraw @p[tag=thunderlord2] {"text":"[@: Thunderlord II]","italic":true,"color":"gray"}
tellraw @p[tag=thunderlord3] {"text":"[@: Thunderlord III]","italic":true,"color":"gray"}
tellraw @p[tag=thunderlord4] {"text":"[@: Thunderlord IV]","italic":true,"color":"gray"}
tellraw @p[tag=thunderlord5] {"text":"[@: Thunderlord V]","italic":true,"color":"gray"}
tellraw @p[tag=thunderlord6] {"text":"[@: Thunderlord VI]","italic":true,"color":"gray"}

execute at @e[tag=thunderlord_mob] run summon lightning_bolt

scoreboard objectives add damage dummy "Damage"
execute as @p[tag=thunderlord1] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.30
execute as @p[tag=thunderlord2] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.60
execute as @p[tag=thunderlord3] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.90
execute as @p[tag=thunderlord4] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.120
execute as @p[tag=thunderlord5] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.150
execute as @p[tag=thunderlord6] run execute store result score @s damage run attribute @s minecraft:generic.attack_damage get 0.180

tellraw @s ["",{"text":"[Thunderlord: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

scoreboard objectives add health dummy "Health"
execute as @e[tag=thunderlord_mob] run execute store result score @s health run data get entity @s Health
execute as @e[tag=thunderlord_mob] run execute if score @s health < @p[tag=thunderlord] damage run kill @s
execute as @e[tag=thunderlord_mob] run scoreboard players operation @s health -= @p[tag=thunderlord] damage
execute as @e[tag=thunderlord_mob] run execute store result entity @s Health float 1 run scoreboard players get @s health

scoreboard objectives remove damage
scoreboard objectives remove health
tag @e[tag=thunderlord_mob] remove thunderlord_mob
tag @p[tag=thunderlord1] remove thunderlord1
tag @p[tag=thunderlord2] remove thunderlord2
tag @p[tag=thunderlord3] remove thunderlord3
tag @p[tag=thunderlord4] remove thunderlord4
tag @p[tag=thunderlord5] remove thunderlord5
tag @p[tag=thunderlord6] remove thunderlord6
advancement revoke @p[tag=thunderlord] only skyblock:commands/enchantments/thunderlord
tag @p[tag=thunderlord] remove thunderlord