attribute @p minecraft:generic.movement_speed modifier add 93-23-20-18-74 "Second Wind" 0.5 multiply_base
effect give @p minecraft:resistance 3 4
effect give @p hunger 30
schedule function skyblock:abilities/instant/second_wind_end 3s replace 
function skyblock:abilities/reset_instant
