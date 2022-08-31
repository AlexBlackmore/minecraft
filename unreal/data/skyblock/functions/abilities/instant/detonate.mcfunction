execute store result score @s health run data get entity @s Health
execute store result score @s max_health run attribute @s minecraft:generic.max_health get 0.2
execute if score @s health < @s max_health run tag @s add detonate
execute if score @s health >= @s max_health run advancement revoke @s only skyblock:commands/abilities/detonate

tellraw @s[tag=detonate] ["",{"text":"DETONATE!","italic":true,"bold":true,"color":"gold"}]

effect give @s[tag=detonate] minecraft:resistance 5 4
execute at @s[tag=detonate] run summon creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,powered:true}
execute if entity @s[tag=detonate] run schedule function skyblock:abilities/instant/detonate_end 60s replace 