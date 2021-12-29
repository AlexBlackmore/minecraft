#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------REMOVE GREGORY--------------#
execute as @e[tag=NPCGregory] run function skyblock:kill
#--------------FREEZE DRAGON---------------#
execute as @e[type=minecraft:ender_dragon,name=!"Ender Dragon",scores={P_Health=..0}] run data merge entity @s {NoAI:1b,DragonPhase:9,Invulnerable:1b}
#--------UNSTABLE DRAGON IMPLOSION---------#
execute as @e[type=ender_dragon,name="Unstable Dragon"] at @s run function public_islands:the_end/post_sequence/unstable_implosion
#------------SCOREBOARD STATS--------------#
team modify drag_health suffix [{"text":" 0","color":"green"},{"text":" ❤","color":"red"}]
schedule function public_islands:the_end/scoreboard/dragon_killed 10s
#----------DRAGON DAMAGE RANKINGS----------#
function public_islands:the_end/post_sequence/damage_rankings
#------DEATH MESSAGE & DAMAGE RECORDS------#
execute as @a[scores={End_DragDamage=1..}] run function public_islands:the_end/post_sequence/death_message
#------------------DROPS-------------------#
execute as @a[scores={End_DragDamage=1..}] at @s run function public_islands:the_end/post_sequence/calc_dragon_drops
#--------------OPEN NEST DOOR--------------#
execute if score Gate End_DragDamage matches 1.. run function public_islands:the_end/open_door/start
#----------CREATE REWARD PLATFORM----------#
execute as @e[type=minecraft:ender_dragon,name=!"Ender Dragon",scores={P_Health=..0}] at @s run function public_islands:the_end/post_sequence/reward_zone/init
#---------------REBUILD GLASS--------------#
execute in skyblock:the_end run summon minecraft:armor_stand 0 7 0 {Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_RebuildStand"]}
schedule function public_islands:the_end/post_sequence/place_pane/start 145t
#---------BEGIN POST DRAG SEQUENCE---------#
scoreboard players set Global End_DragDeath 0
#------------------------------------------#