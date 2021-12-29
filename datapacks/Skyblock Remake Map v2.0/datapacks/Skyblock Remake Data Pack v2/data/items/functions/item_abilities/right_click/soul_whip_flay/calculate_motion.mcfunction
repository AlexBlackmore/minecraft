#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty
#the motion system is coded by shunes

#get targets pos
execute as @e[type=armor_stand,tag=flay_target] store result score @s FlayPosTargetX run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=flay_target] store result score @s FlayPosTargetY run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=flay_target] store result score @s FlayPosTargetZ run data get entity @s Pos[2] 1000

#get player pos
execute as @s store result score @s FlayPosBoltX run data get entity @s Pos[0] -1000
execute as @s store result score @s FlayPosBoltY run data get entity @s Pos[1] -1000
execute as @s store result score @s FlayPosBoltZ run data get entity @s Pos[2] -1000

#add player pos to target pos (the player pos is negative)
scoreboard players operation @s FlayPosBoltX += @e[type=armor_stand,limit=1,sort=nearest,tag=flay_target] FlayPosTargetX
scoreboard players operation @s FlayPosBoltY += @e[type=armor_stand,limit=1,sort=nearest,tag=flay_target] FlayPosTargetY
scoreboard players operation @s FlayPosBoltZ += @e[type=armor_stand,limit=1,sort=nearest,tag=flay_target] FlayPosTargetZ

#set motion from calculated distance
execute if entity @e[tag=flay_target,distance=..5] run scoreboard players set @s FlayPosBoltY 4000
execute if entity @e[tag=flay_target,distance=5.1..10] run scoreboard players set @s FlayPosBoltY 3000
execute if entity @e[tag=flay_target,distance=10.1..20] run scoreboard players set @s FlayPosBoltY 3000
execute if entity @e[tag=flay_target,distance=20..] run scoreboard players set @s FlayPosBoltY 3000
execute as @e[tag=flay_bolt,tag=!flay_movement_done] at @s run execute store result entity @s Motion[0] double 0.00015 run scoreboard players get @e[tag=flay_bolt,limit=1,sort=nearest] FlayPosBoltX
execute as @e[tag=flay_bolt,tag=!flay_movement_done] at @s run execute store result entity @s Motion[1] double 0.0002 run scoreboard players get @e[tag=flay_bolt,limit=1,sort=nearest] FlayPosBoltY
execute as @e[tag=flay_bolt,tag=!flay_movement_done] at @s run execute store result entity @s Motion[2] double 0.00015 run scoreboard players get @e[tag=flay_bolt,limit=1,sort=nearest] FlayPosBoltZ

#reset
kill @e[tag=flay_target]
tag @e[tag=flay_bolt] add flay_movement_done