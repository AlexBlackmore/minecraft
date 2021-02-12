#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 3
function skyblock:random/range_lcg

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
execute if score out RandMath matches 0 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Lapis Armor Helmet","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Lapis Armor Chestplate","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 2 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Lapis Armor Leggings","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 3 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Lapis Armor Boots","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 0 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/lapis/helmet
execute if score out RandMath matches 1 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/lapis/chestplate
execute if score out RandMath matches 2 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/lapis/leggings
execute if score out RandMath matches 3 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/lapis/boots
#------------------------------------------#