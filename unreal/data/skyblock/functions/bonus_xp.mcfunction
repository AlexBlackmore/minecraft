scoreboard objectives add min dummy "Min"
scoreboard objectives add max dummy "Max"
scoreboard objectives add points dummy "Points"


tag @e[type=item,nbt={Item:{tag:{Name:"Experience Orb"}}},limit=1,sort=nearest] add item
execute store result score @s min run data get entity @e[tag=item,limit=1,sort=nearest] Item.tag.Min
execute store result score @s max run data get entity @e[tag=item,limit=1,sort=nearest] Item.tag.Max
scoreboard players operation @s max -= @s min

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @s points run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
kill @e[tag=rng]

scoreboard players operation @s points %= @s max
scoreboard players operation @s points += @s min


tellraw @s ["",{"text":"[@: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"points"},"italic":true,"color":"gray"},{"text":" XP] ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"min"},"italic":true,"color":"gray"},{"text":" "},{"score":{"name":"*","objective":"max"},"italic":true,"color":"gray"}]
execute at @s[scores={points=1..}] run summon experience_orb ~ ~ ~ {Tags:["xp_orb"]}
execute store result entity @e[tag=xp_orb,limit=1,sort=nearest] Value short 1 run scoreboard players get @s points
execute store result entity @e[tag=xp_orb,limit=1,sort=nearest] Count int 1 run data get entity @e[tag=item,limit=1,sort=nearest] Item.Count
kill @e[tag=item,limit=1,sort=nearest]

tag @e[tag=xp_orb] remove xp_orb

scoreboard objectives remove min
scoreboard objectives remove max
scoreboard objectives remove points