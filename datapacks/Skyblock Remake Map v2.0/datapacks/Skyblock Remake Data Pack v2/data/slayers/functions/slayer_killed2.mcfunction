#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
tellraw @a[tag=NeedSlayerJingle] {"text":"  NICE! SLAYER BOSS SLAIN!","color":"gold","bold":true}
execute as @a[tag=NeedSlayerJingle] if score @s S_CQuestType matches 1 run tellraw @s ["",{"text":"  »","color":"dark_purple","bold":true},{"text":" Talk to Maddox to claim your Zombie Slayer XP! ","color":"gray"}]
execute as @a[tag=NeedSlayerJingle] if score @s S_CQuestType matches 2 run tellraw @s ["",{"text":"  »","color":"dark_purple","bold":true},{"text":" Talk to Maddox to claim your Spider Slayer XP! ","color":"gray"}]
execute as @a[tag=NeedSlayerJingle] if score @s S_CQuestType matches 3 run tellraw @s ["",{"text":"  »","color":"dark_purple","bold":true},{"text":" Talk to Maddox to claim your Wolf Slayer XP! ","color":"gray"}]

scoreboard players set @a[tag=NeedSlayerJingle] J_SlayerKilled 9
tag @a[tag=Spawning] remove Spawning
execute as @a[tag=NeedSlayerJingle] run function slayers:scoreboard/tree
tag @a[tag=NeedSlayerJingle] remove NeedSlayerJingle


