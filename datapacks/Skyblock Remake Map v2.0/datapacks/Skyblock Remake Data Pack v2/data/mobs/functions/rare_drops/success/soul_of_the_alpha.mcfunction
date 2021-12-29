#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if score out RandMath matches 1..5000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Weak Wolf Catalyst","color":"blue"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1..5000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet."}]

execute if score out RandMath matches 5001..5500 run tellraw @s ["",{"text":"CRAZY RARE DROP! ","bold":true,"color":"light_purple"},{"text":"Foraging Exp Boost","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 5001..5500 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet (was epic)."}]
#------------------------------------------#