#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------POST DRAG SEQUENCE------------#
scoreboard players add Global End_DragDeath 1
#-------------REWARD PLATFORM--------------#

#---------------KILL DRAGON----------------#
execute as @e[type=minecraft:ender_dragon,name=!"Ender Dragon",scores={P_Health=..0},limit=1] at @s if score $1Second TickTimer matches 0 run particle minecraft:explosion_emitter ~ ~3 ~ 0 0 0 0.01 1 force
execute if score Global End_DragDeath matches 200 run kill @e[type=ender_dragon]
#---------------REBUILT EGG----------------#
scoreboard players operation Temp End_DragDeath = Global End_DragDeath
scoreboard players operation Temp End_DragDeath %= c35 Constant

execute if score Global End_DragDeath matches 95.. if score Temp End_DragDeath matches 0 as @e[tag=End_RebuildStand] at @s run function public_islands:the_end/post_sequence/rebuild
execute if score Global End_DragDeath matches 1475.. run function public_islands:the_end/reset_altar
#------------------------------------------#