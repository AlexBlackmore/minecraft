#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MESSAGES------------------#
tellraw @s ["",{"text":"HYPIXEL SKYBLOCK REMAKE!","color":"red","bold":true,"underlined":true}]
tellraw @s ["",{"text":"Created by ","color":"white"},{"text":"BlueCommander","color":"aqua"},{"text":"!","color":"white"}]
tellraw @s ["",{"text":"Keep Up To Date: ","color":"white"},{"text":"[Youtube]","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/BlueCommander"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Youtube Channel!"}}},{"text":" [Twitter]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/ItsBlueCmdr"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Twitter!"}}},{"text":" [Discord]","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://discord.com/invite/g6zHaNC"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my discord!"}}},{"text":"\n"},{"text":"[Click to view additional credits]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function skyblock:view_credits"}}]
#---------------PLAYER JOIN----------------#
execute unless score Global End_DragSeq matches -1 unless entity @s[scores={Location=8,SubLocation=35}] run scoreboard players reset @s End_DragDamage

scoreboard players reset @s join_game
#------------------------------------------#