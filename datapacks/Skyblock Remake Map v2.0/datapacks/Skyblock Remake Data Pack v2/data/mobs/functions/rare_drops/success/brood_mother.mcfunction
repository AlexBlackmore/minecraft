#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Luxurious Spool","color":"blue"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
tellraw @s ["",{"text":"*Drop not added yet*","color":"white"}]
#------------------------------------------#