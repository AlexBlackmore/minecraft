#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TRADE-------------------#
execute if entity @s[scores={CraftFullInv=0}] run clear @s ender_eye{Base:{Skyblock:1b}} 1
execute if entity @s[scores={CraftFullInv=0}] run give @s end_portal_frame{Base:{Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Teleport Pad","color":"green","italic":false}',Lore:['[{"text":"Places a teleport Pad down","color":"gray","italic":false}]','[{"text":"allowing you to teleport to any","color":"gray","italic":false}]','[{"text":"other Teleport Pad on your","color":"gray","italic":false}]','[{"text":"private island!","color":"gray","italic":false}]','[{"text":"Maximum of 12 per island.","color":"dark_gray","italic":false}]','[{"text":" "}]','[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}} 2
execute if entity @s[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if entity @s[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#