#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players set @s J_RareDrop 14
tellraw @s ["",{"text":"ULTRA RARE DROP! ","bold":true,"color":"dark_purple"},{"text":"(","color":"gray"},{"text":"Revenant Catalyst","color":"dark_purple"},{"text":")","color":"gray"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find!)","color":"aqua"}]
execute at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/other/slayers/revenant_catalyst
#------------------------------------------#