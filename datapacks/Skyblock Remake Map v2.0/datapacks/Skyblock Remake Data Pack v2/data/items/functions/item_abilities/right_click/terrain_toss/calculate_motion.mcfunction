#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty
#the motion system is coded by shunes

#get targets pos
execute as @e[type=armor_stand,tag=toss_target] store result score @s TossPosTargetX run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=toss_target] store result score @s TossPosTargetY run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=toss_target] store result score @s TossPosTargetZ run data get entity @s Pos[2] 1000

#get negative player pos
execute as @s store result score @s TossPosTerrainX run data get entity @s Pos[0] -1000
execute as @s store result score @s TossPosTerrainY run data get entity @s Pos[1] -1000
execute as @s store result score @s TossPosTerrainZ run data get entity @s Pos[2] -1000

#add player pos to target pos (the player pos is negative)
scoreboard players operation @s TossPosTerrainX += @e[type=armor_stand,limit=1,sort=nearest,tag=toss_target] TossPosTargetX
scoreboard players operation @s TossPosTerrainY += @e[type=armor_stand,limit=1,sort=nearest,tag=toss_target] TossPosTargetY
scoreboard players operation @s TossPosTerrainZ += @e[type=armor_stand,limit=1,sort=nearest,tag=toss_target] TossPosTargetZ

#set motion from calculated distance
execute if entity @e[tag=toss_target,distance=..5] run scoreboard players set @s TossPosTerrainY 1700
execute if entity @e[tag=toss_target,distance=5.1..10] run scoreboard players set @s TossPosTerrainY 4000
execute if entity @e[tag=toss_target,distance=10.1..20] run scoreboard players set @s TossPosTerrainY 7000
execute if entity @e[tag=toss_target,distance=20..] run scoreboard players set @s TossPosTerrainY 9000
execute as @e[tag=toss_block,tag=!toss_movement_done] at @s run execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @e[tag=toss_block3,limit=1,sort=nearest] TossPosTerrainX
execute as @e[tag=toss_block,tag=!toss_movement_done] at @s run execute store result entity @s Motion[1] double 0.0002 run scoreboard players get @e[tag=toss_block3,limit=1,sort=nearest] TossPosTerrainY
execute as @e[tag=toss_block,tag=!toss_movement_done] at @s run execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @e[tag=toss_block3,limit=1,sort=nearest] TossPosTerrainZ

#reset
kill @e[tag=toss_target]
tag @e[tag=toss_block] add toss_movement_done