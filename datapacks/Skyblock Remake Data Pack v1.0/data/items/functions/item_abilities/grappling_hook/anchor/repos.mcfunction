execute store result score @s I_GrapplePos1 run data get entity @s Pos[0] 500
execute store result score @s I_GrapplePos3 run data get entity @s Pos[2] 500
execute as @a[tag=GrapplingRider] store result score @s I_GrapplePos1 run data get entity @s Pos[0] 2000
execute as @a[tag=GrapplingRider] store result score @s I_GrapplePos3 run data get entity @s Pos[2] 2000
scoreboard players operation @s I_GrapplePos1 += @a[tag=GrapplingRider,limit=1] I_GrapplePos1
scoreboard players operation @s I_GrapplePos3 += @a[tag=GrapplingRider,limit=1] I_GrapplePos3
scoreboard players operation @s I_GrapplePos1 /= c5 Constant
scoreboard players operation @s I_GrapplePos3 /= c5 Constant
execute as @a[tag=GrapplingRider,tag=GrappleException] store result score @s I_GrapplePos1 run data get entity @s Pos[0] 500
execute as @a[tag=GrapplingRider,tag=GrappleException] store result score @s I_GrapplePos3 run data get entity @s Pos[2] 500
execute store result entity @s Pos[0] double 0.002 run scoreboard players get @s I_GrapplePos1
execute store result entity @s Pos[2] double 0.002 run scoreboard players get @s I_GrapplePos3
#tellraw @p ["",{"score":{"name":"@s","objective":"I_GrapplePos1"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"I_GrapplePos3"},"bold":true,"color":"dark_green"}]
