tag @p[advancements={skyblock:commands/instant/spirit_mask=true}] add spirit_mask

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute store result score @p[tag=spirit_mask] max_health run attribute @p[tag=spirit_mask] minecraft:generic.max_health get
execute store result score @p[tag=spirit_mask] health run data get entity @p[tag=spirit_mask] Health
scoreboard players set @p[tag=spirit_mask] dummy 10

scoreboard players operation @p[tag=spirit_mask] max_health /= @p[tag=spirit_mask] dummy
execute if score @p[tag=spirit_mask] health < @p[tag=spirit_mask] max_health run tag @p[tag=spirit_mask] add second_wind

effect give @p[tag=second_wind] minecraft:resistance 4 3

effect give @p[tag=second_wind] hunger 30
attribute @p[tag=second_wind] minecraft:generic.movement_speed modifier add 93-23-20-18-74 "Second Wind" 0.5 multiply_base
execute if entity @p[tag=second_wind] run schedule function skyblock:abilities/instant/second_wind_end 3s replace 

tag @p[tag=spirit_mask] remove spirit_mask

function skyblock:abilities/reset_instant
