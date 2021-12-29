#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
kill @e[tag=End_RebuildStand]
kill @e[tag=EndCrystal]
execute as @e[tag=EndCrystalHitBox] at @s run function skyblock:kill
scoreboard players set @e[tag=End_CrystalLocation] End_DragSeq 0
bossbar set dragon players 
function public_islands:the_end/place_egg
function public_islands:the_end/place_base_glass
execute in skyblock:the_end run fill -55 110 -40 42 110 41 air replace glass
scoreboard players reset @a End_EyeCount
scoreboard players reset @a End_DragDamage
scoreboard players reset Global End_EyeCount
scoreboard players reset Global End_DragDeath
scoreboard players reset Global End_DragSeq
execute in skyblock:the_end run summon minecraft:armor_stand -2 8.8 -1 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand -2 8.8 1 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand -1 8.8 2 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand 1 8.8 2 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand 2 8.8 1 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand 2 8.8 -1 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand 1 8.8 -2 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
execute in skyblock:the_end run summon minecraft:armor_stand -1 8.8 -2 {Rotation:[90f],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_EyeStand"]}
tellraw @a ["",{"text":"☬ ","color":"dark_purple"},{"text":"The Dragon Egg has spawned!","color":"light_purple"}]
#------------------------------------------#