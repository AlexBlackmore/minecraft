execute as @p[tag=bow] run execute store result score @s attack_damage run data get entity @s XpLevel
execute as @e[tag=calc] run scoreboard players operation @s damage += @p[tag=bow] attack_damage

tellraw @p[tag=bow] ["",{"text":"EXTREME FOCUS!","bold":true,"color":"gold"},{"text":" +","color":"red"},{"score":{"name":"*","objective":"attack_damage"},"color":"red"},{"text":" damage!","color":"red"}]
execute at @p[tag=bow] run playsound minecraft:block.enchantment_table.use player @p
xp set @p[tag=bow] 0 levels