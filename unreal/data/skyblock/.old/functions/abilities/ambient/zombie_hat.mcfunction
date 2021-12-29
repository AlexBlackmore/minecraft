tag @p[advancements={skyblock:commands/ambient/zombie_hat=true}] add zombie_hat

scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add count dummy "Count"
scoreboard players set @p[tag=zombie_hat] count 0

execute as @p[tag=zombie_hat] run execute store result score @s dummy run attribute @s minecraft:generic.armor modifier value get 87-39-35-47-24
attribute @p minecraft:generic.attack_damage modifier remove 87-39-35-47-24

execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=0..1] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=1..2] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=2..3] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=3..4] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=4..5] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=5..6] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=6..7] run scoreboard players add @s count 1
execute as @p[tag=zombie_hat] run execute if entity @e[type=zombie,distance=7..8] run scoreboard players add @s count 1

execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 1 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 1 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 2 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 2 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 3 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 3 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 4 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 4 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 5 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 5 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 6 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 6 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 7 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 7 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 8 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 8 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 9 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 9 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 10 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 10 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 11 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 11 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 12 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 12 add
execute as @p[tag=zombie_hat] run execute if execute if score @s count matches 13 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 13 add
execute as @p[tag=zombie_hat] run execute if execute unless score @s count matches 0 run attribute attribute @s minecraft:generic.armor modifier add 87-39-35-47-24 "Zombie Hat" 14 add

execute as @p[tag=zombie_hat] run execute unless score @s count = @s dummy run tellraw @s ["",{"text":"[Zombie Hat: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"count"},"italic":true,"color":"gray"},{"text":" Armor]","italic":true,"color":"gray"}]

tag @p[tag=zombie_hat] remove zombie_hat
scoreboard objectives remove count

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/zombie_hat=true}] run schedule function skyblock:abilities/ambient/zombie_hat 2s replace