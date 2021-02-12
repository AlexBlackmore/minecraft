#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if score out RandMath matches 1..10000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Charcoal","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1..10000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_charcoal

execute if score out RandMath matches 10001..35000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Coal","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 10001..35000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_coal
#------------------------------------------#