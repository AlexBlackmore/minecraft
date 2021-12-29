execute unless score @s WitherID matches 0.. run function armor:full_set_bonus/abilities/witherborn/assign_id

#Wither exists, but belongs to different player
execute unless score @e[tag=witherborn,limit=1,distance=0.98..1.02] WitherID = @s WitherID rotated 0 0 run summon wither ~ ~ ~ {NoAI:1,CustomName:'{"text":"Dinnerbone"}',Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b}],Invul:1000}
execute unless score @e[tag=witherborn,limit=1,sort=nearest] WitherID = @s WitherID run tag @e[type=wither,name="Dinnerbone",limit=1,sort=nearest,tag=!witherborn] add witherborn

#Wither doesn't exist
execute unless entity @e[tag=witherborn] rotated 0 0 run summon wither ~ ~ ~ {NoAI:1,CustomName:'{"text":"Dinnerbone"}',Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b}],Invul:1000}
execute unless entity @e[tag=witherborn] run tag @e[type=wither,name="Dinnerbone",limit=1,sort=nearest,distance=0..0.01] add witherborn

execute unless score @e[tag=witherborn,limit=1,sort=nearest] WitherID = @s WitherID run scoreboard players operation @e[tag=witherborn,limit=1,sort=nearest,distance=0..0.01] WitherID = @s WitherID

execute unless score @s WitherPos matches 0..360 run scoreboard players set @s WitherPos 0

function armor:full_set_bonus/abilities/witherborn/witherpos/0/0

scoreboard players operation @s WitherPos += @s WitherSpeed

execute as @e[distance=..8,tag=HasHealthDisplay,limit=1,sort=nearest,tag=!witherborn] run function armor:full_set_bonus/abilities/witherborn/explode