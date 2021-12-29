#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
# Following Animation
execute as @a at @s as @e[tag=Pet] at @s unless entity @a[distance=..35] if score @s PlayerID = @p PlayerID run tp @s @p
execute as @a at @s as @e[tag=Pet] at @s if score @s PlayerID = @p PlayerID run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=Pet] at @s unless block ~ ~ ~ #skyblock:allowed run tp @s ~ ~2 ~
execute as @e[tag=Pet] at @s as @e[tag=PetName] if score @s PlayerID = @e[tag=Pet,sort=nearest,limit=1] PlayerID run tp @s ^ ^ ^-0.5


execute as @e[tag=Pet] at @s unless entity @a[distance=..2.5] run tag @s add NoPlayer
execute as @e[tag=Pet] at @s unless entity @a[distance=..2.5] run tag @s remove Player
execute as @e[tag=Pet] at @s if entity @a[distance=..2.5] run tag @s add Player
execute as @e[tag=Pet] at @s if entity @a[distance=..2.5] run tag @s remove NoPlayer


execute as @e[tag=Pet,tag=NoPlayer] at @s run tp @s ^ ^ ^.6


execute as @e[tag=Pet,tag=Player] run scoreboard players add @s Temp 1
execute as @e[tag=Pet,tag=Player,scores={Temp=0..20}] at @s run tp @s ~ ~0.05 ~
execute as @e[tag=Pet,tag=Player,scores={Temp=21..30}] at @s run tp @s ~ ~0.03 ~

# Debug
# execute as @e[tag=Pet,tag=Player,scores={Temp=30}] at @s store result score @s Raycast run data get entity @s Pos[1]
# execute as @e[tag=Pet,tag=Player,scores={Temp=30}] at @s run tellraw @a {"score":{"name":"@s","objective":"Raycast"}}

execute as @e[tag=Pet,tag=Player,scores={Temp=31..51}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=Pet,tag=Player,scores={Temp=52..61}] at @s run tp @s ~ ~-0.03 ~

# Debug
# execute as @e[tag=Pet,tag=Player,scores={Temp=61}] at @s store result score @s Raycast run data get entity @s Pos[1]
# execute as @e[tag=Pet,tag=Player,scores={Temp=61}] at @s run tellraw @a {"score":{"name":"@s","objective":"Raycast"}}

execute as @e[tag=Pet,tag=Player,scores={Temp=61..}] run scoreboard players reset @s Temp


# Max pet command
execute as @a[scores={MaxPet=1..}] at @s run function pets:max_pet
#------------------------------------------#