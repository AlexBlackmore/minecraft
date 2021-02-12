#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ABILITIES TIMER-------------#
tellraw @a[scores={SubLocation=35}] ["",{"text":"[BOSS] ","color":"red"},{"selector":"@e[type=minecraft:ender_dragon,name=!\"Ender Dragon\",sort=nearest,limit=1]"},{"text":": ","color":"white"},{"text":"I call upon my loyal servants for this final battle!","color":"gold"}]
execute as @a[scores={SubLocation=35}] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1.8 1
function mobs:spawners/the_end/place
tag @e[type=ender_dragon,name=!"Ender Dragon",limit=1] add End_FinalBattleDone
#------------------------------------------#