#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s facing entity @e[sort=nearest,limit=1,tag=End_FireballTarget] feet run tp @s ^ ^ ^ ~180 ~
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s rotated ~ 0 positioned ^ ^ ^-6 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.01 4 force
execute as @e[type=ender_dragon,name=!"Ender Dragon"] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
scoreboard players operation $AbilityMod End_DragSeq = $AbilityTimer End_DragSeq
scoreboard players operation $AbilityMod End_DragSeq %= c5 Constant
execute if score $AbilityTimer End_DragSeq matches ..-60 if score $AbilityMod End_DragSeq matches 0 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s rotated ~180 0 positioned ^ ^ ^7 if entity @e[sort=nearest,limit=1,tag=End_FireballTarget] facing entity @e[sort=nearest,limit=1,tag=End_FireballTarget] feet run function public_islands:the_end/main_sequence/attack/fireball/shoot
execute if score $AbilityTimer End_DragSeq matches ..-140 run function public_islands:the_end/main_sequence/attack/generate_timer
#------------------------------------------#