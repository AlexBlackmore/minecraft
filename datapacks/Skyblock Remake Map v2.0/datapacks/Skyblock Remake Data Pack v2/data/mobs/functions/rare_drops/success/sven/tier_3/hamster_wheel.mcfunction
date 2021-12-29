#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players set @s J_RareDrop 14
tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"aqua"},{"text":"(","color":"gray"},{"text":"Hamster Wheel","color":"blue"},{"text":")","color":"gray"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find!)","color":"aqua"}]
execute at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot mobs:mob_loot/slayers/wolf/wheel/tier_3
#------------------------------------------#