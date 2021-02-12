#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Poisonous Potato","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"P_MagicFind"},"color":"aqua"},{"text":"% Magic Find)","color":"aqua"}]
execute at @e[type=armor_stand,tag=DamageDealt,sort=nearest,limit=1] run summon item ~ ~ ~ {Item:{id:"poisonous_potato",Count:1b,tag:{Base:{Vanilla:1b,Type:"BREWING INGREDIENT",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Poisonous Potato","color":"white","italic":false}',Lore:['[{"text":"Brewing Ingredient","color":"dark_gray","italic":false}]','[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
#------------------------------------------#