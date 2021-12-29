attribute @s minecraft:generic.knockback_resistance base set 100
execute at @e[tag=TarantulaBroodfather] run summon minecraft:snowball ~1.3 ~ ~ {Tags:["AggroSnowball"],Motion: [-0.8,0.0,0.0]}
execute if entity @s[tag=TarantulaBroodfather] as @a at @s as @e[tag=TarantulaBroodfather] if score @s PlayerID = @p PlayerID run data modify entity @e[tag=AggroSnowball,tag=!GotUUID,limit=1] Owner set from entity @p UUID
tag @e[tag=AggroSnowball] add GotUUID
scoreboard players set @s S_BefAggro 0