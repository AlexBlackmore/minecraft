tag @p[advancements={skyblock:commands/instant/detonate=true}] add creeper_pants

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute store result score @p[tag=creeper_pants] max_health run attribute @p[tag=creeper_pants] minecraft:generic.max_health get
execute store result score @p[tag=creeper_pants] health run data get entity @p[tag=creeper_pants] Health
scoreboard players set @p[tag=creeper_pants] dummy 5

scoreboard players operation @p[tag=creeper_pants] max_health /= @p[tag=creeper_pants] dummy
execute if score @p[tag=creeper_pants] health < @p[tag=creeper_pants] max_health run tag @p[tag=creeper_pants] add detonate

effect give @p[tag=detonate] minecraft:resistance 4 9
execute at @p[tag=detonate] run summon tnt ~ ~ ~ {Fuse:0}

effect give @p[tag=detonate] hunger 60

tag @p[tag=creeper_pants] remove creeper_pants
tag @p[tag=detonate] remove detonate

function skyblock:abilities/reset_instant
