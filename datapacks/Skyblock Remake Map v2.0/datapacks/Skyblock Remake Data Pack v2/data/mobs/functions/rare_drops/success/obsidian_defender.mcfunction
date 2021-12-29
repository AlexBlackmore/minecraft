#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if score out RandMath matches 1..100 run tellraw @s ["",{"text":"VERY RARE DROP! ","bold":true,"color":"aqua"},{"text":"Combat EXP Boost","color":"blue"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1..100 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet (was rare)."}]

execute if score out RandMath matches 101..200 run tellraw @s ["",{"text":"VERY RARE DROP! ","bold":true,"color":"aqua"},{"text":"Combat EXP Boost","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 101..200 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run tellraw @s ["",{"text":"Drop not added yet (was epic)."}]

execute if score out RandMath matches 201..1200 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Obsidian Chestplate","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 201..1200 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/obsidian_chestplate

execute if score out RandMath matches 1201..51200 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Obsidian","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1201..51200 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_obsidian
#------------------------------------------#