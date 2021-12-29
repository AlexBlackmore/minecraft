tag @p[advancements={skyblock:commands/instant/swing=true}] add swing
advancement revoke @p[tag=swing] only skyblock:commands/instant/swing
execute at @e[type=trident,tag=shot] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest,type=!player] add swing_target

effect give @e[tag=swing_target] glowing 1

scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute as @p[tag=swing] run scoreboard players set @s damage 54
execute as @p[tag=swing] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @p[tag=swing] run scoreboard players operation @s damage += @s attack_damage

execute as @e[tag=swing_target] run execute store result score @s health run data get entity @s Health
execute as @e[tag=swing_target] run execute if score @s health < @p[tag=swing] damage run kill @s
execute as @e[tag=swing_target] run scoreboard players operation @s health -= @p[tag=swing] damage
execute as @e[tag=swing_target] run execute store result entity @s Health float 1 run scoreboard players get @s health

tellraw @p[tag=swing] ["",{"text":"SWING! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"damage"},"color":"red"},{"text":" damage","color":"red"}]

execute at @p[tag=swing] run playsound minecraft:entity.experience_orb.pickup player @p

tag @e[tag=swing_target] remove swing_target
tag @p[tag=swing] remove swing
scoreboard objectives remove damage
scoreboard objectives remove health