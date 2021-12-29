tag @p[advancements={skyblock:commands/ambient/blazing_aura=true},predicate=skyblock:blaze_armor] add blazing_aura
tag @p[advancements={skyblock:commands/ambient/blazing_aura=true},predicate=skyblock:frozen_blaze_armor] add frozen_blazing_aura

scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add blaze_rods dummy "Blaze Rod Collection"

scoreboard players set @p[tag=frozen_blazing_aura] blaze_rods 0
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod1=true}] blaze_rods 50
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod2=true}] blaze_rods 50
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod3=true}] blaze_rods 150
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod4=true}] blaze_rods 750
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod5=true}] blaze_rods 1500
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod6=true}] blaze_rods 2500
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod7=true}] blaze_rods 5000
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod8=true}] blaze_rods 15000
scoreboard players add @p[tag=frozen_blazing_aura,advancements={skyblock:collection/combat/blaze_rod/blaze_rod9=true}] blaze_rods 25000

scoreboard players set @p[tag=frozen_blazing_aura] dummy 250
scoreboard players operation @p[tag=frozen_blazing_aura] blaze_rods /= @p[tag=frozen_blazing_aura] dummy 
scoreboard players add @p[tag=frozen_blazing_aura] blaze_rods 60
scoreboard players set @p[tag=frozen_blazing_aura] dummy 100
scoreboard players operation @p[tag=frozen_blazing_aura] blaze_rods *= @p[tag=frozen_blazing_aura] dummy 


scoreboard objectives add health dummy "Health"
scoreboard objectives add damage dummy "Damage"

execute at @p[tag=blazing_aura] run tag @e[tag=!blazing_aura,distance=0..5] add blazing_aura_mob

execute if entity @p[tag=blazing_aura] run execute at @p[tag=blazing_aura_mob] run particle flame ~ ~1 ~ 0 0 0 0.1 10
execute if entity @p[tag=frozen_blaze_armor] run execute at @p[tag=blazing_aura_mob] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.1 10


execute as @e[tag=blazing_aura_mob] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=blazing_aura_mob] run execute store result score @s damage run data get entity @s Health 3
execute if entity @p[tag=frozen_blaze_armor] run execute as @e[tag=blazing_aura_mob] run scoreboard players operation @s damage += @p[tag=frozen_blazing_aura] blaze_rods
execute as @e[tag=blazing_aura_mob] run execute if score @s health < @s damage run kill @s
execute as @e[tag=blazing_aura_mob] run scoreboard players operation @s health -= @s damage
execute as @e[tag=blazing_aura_mob] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard objectives remove blaze_rods


execute as @p[tag=blazing_aura] run execute unless entity @s[predicate=skyblock:blaze_armor] run advancement revoke @s only skyblock:commands/blazing_aura
execute as @p[tag=frozen_blazing_aura] run execute unless entity @s[predicate=skyblock:frozen_blaze_armor] run advancement revoke @s only skyblock:commands/blazing_aura

execute if entity @p[advancements={skyblock:commands/ambient/blazing_aura=true}] run schedule function skyblock:abilities/ambient/blazing_aura 1s replace

tag @p[tag=blazing_aura] remove blazing_aura
tag @p[tag=frozen_blazing_aura] remove frozen_blazing_aura
tag @p[tag=blazing_aura_mob] remove blazing_aura_mob
