tag @p[advancements={skyblock:commands/instant/swing_throw=false}] add swing

scoreboard objectives add owner dummy "Owner"
execute as @e[type=trident,tag=!shot] run execute store result score @s owner run data get entity @s Owner[0]
execute as @p[tag=swing] run execute store result score @s owner run data get entity @s UUID[0]
execute as @e[type=trident,tag=!shot,nbt={inGround:0b}] run execute if score @s owner = @p[tag=swing] owner run tag @s add calc
scoreboard objectives remove owner

execute unless entity @e[tag=calc] run tag @p[tag=swing] remove swing

scoreboard objectives add damage dummy "Damage"
execute as @e[tag=calc] run scoreboard players set @s damage 54
execute as @p[tag=swing] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get

execute as @e[tag=calc] run scoreboard players operation @s damage += @p[tag=swing] attack_damage


execute as @e[tag=calc] run execute store result entity @s damage double 1 run scoreboard players get @s damage
scoreboard players operation @p[tag=swing] damage = @e[tag=calc,limit=1,sort=nearest] damage
tellraw @p[tag=swing] ["",{"text":"[Swing: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

scoreboard objectives remove damage
#tag @p[tag=swing] remove swing