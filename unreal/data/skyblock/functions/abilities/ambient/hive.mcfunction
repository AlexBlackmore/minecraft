tag @s[advancements={skyblock:pets/bee=true}] add pet

tag @s[tag=pet,advancements={skyblock:pets/bee=true}] add common
tag @s[tag=pet,advancements={skyblock:pets/bee/uncommon=true}] add uncommon
tag @s[tag=pet,advancements={skyblock:pets/bee/rare=true}] add rare
tag @s[tag=pet,advancements={skyblock:pets/bee/epic=true}] add epic
tag @s[tag=pet,advancements={skyblock:pets/bee/legendary=true}] add legendary


scoreboard objectives add hive dummy "Hive"
execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @s run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @s hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @s run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @s hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @s run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @s hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @s run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @s hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @s run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @s hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

tag @e[tag=hive_counted] remove hive_counted


execute as @s[advancements={skyblock:pets/bee=true}] run scoreboard players set @s dummy 3
execute as @s[advancements={skyblock:pets/bee/uncommon=true}] run scoreboard players set @s dummy 5
execute as @s[advancements={skyblock:pets/bee/rare=true}] run scoreboard players set @s dummy 10
execute as @s[advancements={skyblock:pets/bee/epic=true}] run scoreboard players set @s dummy 15
execute as @s[advancements={skyblock:pets/bee/legendary=true}] run scoreboard players set @s dummy 20

scoreboard players operation @s dummy *= @s hive
execute as @s run scoreboard players operation @s intelligence += @s dummy

scoreboard objectives remove hive

tag @s remove pet
tag @p[tag=common] remove common
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary