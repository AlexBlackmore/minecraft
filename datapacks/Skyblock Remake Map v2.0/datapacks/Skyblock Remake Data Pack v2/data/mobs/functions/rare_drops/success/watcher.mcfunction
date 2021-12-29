#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
execute if score out RandMath matches 1..50000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Bone","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1..50000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_bone

execute if score out RandMath matches 50001..60000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"End Stone Bow","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 50001..60000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/bow/end_stone_bow

execute if score out RandMath matches 60001..70000 run tellraw @s ["",{"text":"VERY RARE DROP! ","bold":true,"color":"aqua"},{"text":"Combat Exp Boost","color":"blue"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 60001..70000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet (was rare)."}]

execute if score out RandMath matches 70001..75000 run tellraw @s ["",{"text":"VERY RARE DROP! ","bold":true,"color":"aqua"},{"text":"Combat Exp Boost","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 70001..75000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet (was epic)."}]
#------------------------------------------#