#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Wolf Talisman","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot cheats:get_items/accessory/wolf_talisman
#------------------------------------------#