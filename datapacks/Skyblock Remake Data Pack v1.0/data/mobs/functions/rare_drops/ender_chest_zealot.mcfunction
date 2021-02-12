#===================NOTE===================#
#    This function was coded by John119    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
#100%: 1,000,000, 1%: 10,000, 0.0001%: 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 7
function skyblock:random/range_lcg
execute if score out RandMath matches 0 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Helmet","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 1 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Chestplate","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 2 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Leggings","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 3 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Ender Boots","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 4 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Obsidian","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 5 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Ender Pearl","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 6 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Enchanted Eye of Ender","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute if score out RandMath matches 7 run tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Crystal Fragment","color":"dark_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]

execute if score out RandMath matches 0 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/helmet
execute if score out RandMath matches 1 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/chestplate
execute if score out RandMath matches 2 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/leggings
execute if score out RandMath matches 3 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/armor/ender/boots
execute if score out RandMath matches 4 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_obsidian
execute if score out RandMath matches 5 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_ender_pearl
execute if score out RandMath matches 6 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/enchanted/enchanted_eye_of_ender
execute if score out RandMath matches 7 at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/materials/crystal_fragment

advancement revoke @s only mobs:rare_drops/ender_chest_zealot
#------------------------------------------#