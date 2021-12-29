#Remove Flight Time
scoreboard players remove @s SoupFlightTime 1
execute if entity @s run function items:item_abilities/soup/flight/soup_flight_time
#Summon Boat
execute unless entity @s[scores={sneak=1..}] unless entity @e[tag=GrapplingAnchor,distance=..5] run summon minecraft:boat ~ ~-0.5625 ~ {NoGravity:1b,Invulnerable:1b,Type:"acacia",Tags:["SoupWalkOn","SoupBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:1000000,Tags:["SoupWalkOn","SoupPassenger"]},{id:"minecraft:area_effect_cloud",Duration:1000000,Tags:["SoupWalkOn","SoupPassenger"]}]}
#Flying Down
execute if entity @s[scores={sneak=1..}] run function items:item_abilities/soup/flight/shifting
#Flying/Jumping Up
execute unless entity @s[scores={sneak=1..}] run scoreboard players add @s[scores={jump=1..,SoupJumpClock=..30}] SoupJumpClock 20
execute if entity @s[scores={SoupJumpClock=1..}] run function items:item_abilities/soup/flight/jumping
#Shifting Reset
scoreboard players set @s sneak 0