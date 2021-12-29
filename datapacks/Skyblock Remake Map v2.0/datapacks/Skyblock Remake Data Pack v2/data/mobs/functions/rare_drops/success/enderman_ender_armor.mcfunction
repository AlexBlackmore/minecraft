#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if score out RandMath matches 1..1000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Helmet","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1..1000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/helmet

execute if score out RandMath matches 1001..2000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Chestplate","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1001..2000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/chestplate

execute if score out RandMath matches 2001..3000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Leggings","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 2001..3000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/leggings

execute if score out RandMath matches 3001..4000 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Boots","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 3001..4000 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/boots
#------------------------------------------#