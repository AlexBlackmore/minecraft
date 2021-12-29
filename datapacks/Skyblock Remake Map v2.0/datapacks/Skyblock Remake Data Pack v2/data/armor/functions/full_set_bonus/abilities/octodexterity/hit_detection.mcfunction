execute unless score @p[tag=TargetEntity] TarantulaHits matches 0..3 run scoreboard players set @p[tag=TargetEntity] TarantulaHits 0

scoreboard players add @p[tag=TargetEntity] TarantulaHits 1

execute if score @p[tag=TargetEntity] TarantulaHits matches 4 run scoreboard players operation $WeaponDamage Temp *= c200 Constant
execute if score @p[tag=TargetEntity] TarantulaHits matches 4 run scoreboard players operation $WeaponDamage Temp /= c100 Constant