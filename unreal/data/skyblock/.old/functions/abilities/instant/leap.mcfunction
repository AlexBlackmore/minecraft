tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Leaping Sword\",\"italic\":false,\"color\":\"light_purple\"}"}}}}] add leaping_sword
tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Silk-Edge Sword\",\"italic\":false,\"color\":\"gold\"}"}}}}] add silkedge_sword
tag @p[tag=leaping_sword] add leap_player
tag @p[tag=silkedge_sword] add leap_player

execute at @p[tag=leap_player] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add leap
execute at @e[tag=leap] run tag @e[type=!player,distance=0..4] add leap

execute at @p[tag=leap_player] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[tag=leap_player] damage run data get entity @p[tag=leap_player] XpLevel
scoreboard players add @p[tag=leap_player] damage 100
scoreboard players set @p[tag=leaping_sword] attack_damage 70
scoreboard players set @p[tag=silkedge_sword] attack_damage 80
scoreboard players operation @p[tag=leap_player] damage *= @p[tag=leap_player] attack_damage

execute as @e[tag=leap] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=leap] run execute if score @s health < @p[tag=leap_player] damage run kill @s
execute as @e[tag=leap] run scoreboard players operation @s health -= @p[tag=leap_player] damage
execute as @e[tag=leap] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

give @p[tag=leap_player] snowball
xp add @p[tag=leap_player] -50 points
effect give @e[tag=leap] slowness 5 1
tag @e[tag=leap] remove leap
tag @e[tag=leap_player] remove leap_player
tag @e[tag=leaping_sword] remove leaping_sword
tag @e[tag=silkedge_sword] remove silkedge_sword

function skyblock:abilities/reset_instant
