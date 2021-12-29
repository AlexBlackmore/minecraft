execute at @p[tag=spirit_sword] run tag @e[type=#skyblock:hostile,distance=0..4] add spirit_bomb

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute store result score @p[tag=spirit_sword] damage run data get entity @p[tag=spirit_sword] XpLevel
scoreboard players add @p[tag=spirit_sword] damage 100
scoreboard players set @p[tag=spirit_sword] attack_damage 160
scoreboard players operation @p[tag=spirit_sword] damage *= @p[tag=spirit_sword] attack_damage

execute at @p[tag=spirit_sword] run summon creeper ~ ~ ~ {Fuse:0}
execute store result score @e[tag=spirit_bomb] health run data get entity @e[limit=1,tag=spirit_bomb] Health 100
execute if score @e[limit=1,tag=spirit_bomb] health < @p[tag=spirit_sword] damage run kill @e[tag=spirit_bomb]
scoreboard players operation @e[tag=spirit_bomb] health -= @p[tag=spirit_sword] damage
execute store result entity @e[limit=1,tag=spirit_bomb] Health float 0.01 run scoreboard players get @e[limit=1,tag=spirit_bomb] health

scoreboard players set @p[tag=spirit_sword] xp_level 100
execute as @p[tag=spirit_sword] run scoreboard players operation @s damage /= @s xp_level
tellraw @p[tag=spirit_sword] ["",{"text":"SPIRIT BOMB! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"damage"},"color":"red"},{"text":" damage!","color":"white"}]


playsound minecraft:block.glass.break player @p[tag=spirit_sword]

scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove health
tag @e[tag=spirit_bomb] remove spirit_bomb
tag @e[tag=spirit_sword] remove spirit_sword
