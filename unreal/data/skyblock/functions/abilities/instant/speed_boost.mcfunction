attribute @p[tag=speed_boost] minecraft:generic.movement_speed modifier remove 68-18-8-79-45
attribute @p[tag=speed_boost] minecraft:generic.movement_speed modifier add 68-18-8-79-45 "Speed Boost" 0.3 multiply_base
tellraw @p[tag=speed_boost] ["",{"text":"SPEED BOOST!","bold":true,"color":"gold"},{"text":" +30% Speed","color":"blue"}]

tellraw @p[tag=ability,tag=!speed_boost] ["",{"text":"SPEED BOOST!","bold":true,"color":"gold"},{"text":" +20% Speed","color":"blue"}]
tag @p[tag=ability] add speed_boost
attribute @p[tag=speed_boost] minecraft:generic.movement_speed modifier add 68-18-8-79-45 "Speed Boost" 0.2 multiply_base

xp add @p[tag=speed_boost] -50 points

schedule function skyblock:abilities/instant/speed_boost_end 30s replace