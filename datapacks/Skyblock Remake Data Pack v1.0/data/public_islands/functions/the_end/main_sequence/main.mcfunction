#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SCOREBOARD STATS-------------#
execute as @a[scores={SubLocation=35},tag=!End_DragScoreboard] unless score Global End_DragDeath matches 199.. run function public_islands:the_end/scoreboard/add_stats
execute if score $1Second TickTimer matches 0 as @a[tag=End_DragScoreboard] unless score @s End_LDragDamage = @s End_DragDamage run function public_islands:the_end/scoreboard/damage/reload
execute if score $1Second TickTimer matches 0 if entity @e[type=ender_dragon,name=!"Ender Dragon"] run function public_islands:the_end/scoreboard/health/reload
#-----------DURING DRAG SEQUENCE-----------#
execute if score Global End_DragSeq matches ..-2 run scoreboard players add Global End_DragSeq 1
execute as @e[tag=DamageDealtDragNew] at @s run function public_islands:the_end/main_sequence/dragon_damage_icon
execute as @e[type=minecraft:ender_dragon,name=!"Ender Dragon"] unless entity @s[scores={P_Health=..0}] run data merge entity @s {DragonPhase:10}
#-------------DRAGON MOVEMENT--------------#
execute as @e[type=ender_dragon,name=!"Ender Dragon"] store result score $DragonY End_DragSeq run data get entity @s Pos[1]

execute if score $AbilityTimer End_DragSeq matches 1.. as @e[type=ender_dragon,name=!"Ender Dragon"] at @s if score $DragYMotion End_DragSeq matches ..-1 if block ~ ~-10 ~ air if score $DragonY End_DragSeq matches 10.. store result entity @s Motion[1] double 0.01 run scoreboard players get $DragYMotion End_DragSeq
execute if score $AbilityTimer End_DragSeq matches 1.. as @e[type=ender_dragon,name=!"Ender Dragon"] at @s if score $DragYMotion End_DragSeq matches 1.. if score $DragonY End_DragSeq matches ..60 store result entity @s Motion[1] double 0.01 run scoreboard players get $DragYMotion End_DragSeq
#--------------ABILITIES TIMER-------------#
execute unless score Global End_DragDeath matches 0.. run function public_islands:the_end/main_sequence/attack/main
execute as @e[tag=Drag_Fireball] at @s as @p[distance=..2] run function public_islands:the_end/main_sequence/attack/fireball/fireball_explode

execute if score $Drag_20Perc End_DragSeq >= @e[type=ender_dragon,name=!"Ender Dragon",tag=!End_FinalBattleDone,limit=1] P_Health run function public_islands:the_end/main_sequence/final_battle
#--------------DRAGON BOSSBAR--------------#
bossbar set dragon players @a[scores={Location=8,SubLocation=35}]
execute as @e[type=minecraft:ender_dragon,name=!"Ender Dragon"] store result bossbar minecraft:dragon value run scoreboard players get @s P_Health
#---------------END CRYSTALS---------------#
#68,103,104,101,70,92 respawn in seconds trial
execute unless score Global End_DragDeath matches 0.. if score $1Second TickTimer matches 0 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s if entity @e[tag=EndCrystal] run function public_islands:the_end/main_sequence/heal_dragon

scoreboard players remove @e[tag=End_CrystalLocation,scores={End_DragSeq=1..}] End_DragSeq 1
execute as @e[tag=End_CrystalLocation,scores={End_DragSeq=1}] at @s run function public_islands:the_end/main_sequence/respawn_crystal
#---------------DRAGON DEATH---------------#
execute unless score Global End_DragDeath matches 0.. if score Global End_DragSeq matches -1 unless entity @e[type=minecraft:ender_dragon,name=!"Ender Dragon"] run function public_islands:the_end/post_sequence/init
execute unless score Global End_DragDeath matches 0.. if entity @e[type=minecraft:ender_dragon,name=!"Ender Dragon",scores={P_Health=..0}] run function public_islands:the_end/post_sequence/init
execute if score Global End_DragDeath matches 0.. run function public_islands:the_end/post_sequence/main
#------------------------------------------#