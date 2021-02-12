#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
function mobs:summon/the_end/special_zealot
execute at @s as @e[tag=SpecialZealot,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 0 10 under 35 false @s
tellraw @s [{"text":"A special ","color":"green"},{"text":"Zealot","color":"dark_purple"},{"text":" has spawned nearby!","color":"green"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"End_ZealotKills"},"color":"gray"},{"text":")","color":"gray"}]
title @s title [{"text":"Special Zealot!","color":"red"}]
scoreboard players reset @s End_ZealotKills
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1 1
#------------------------------------------#