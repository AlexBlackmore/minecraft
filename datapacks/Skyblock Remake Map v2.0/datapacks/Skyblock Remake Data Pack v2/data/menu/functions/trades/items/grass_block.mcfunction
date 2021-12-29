#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TRADE-------------------#
execute if entity @s[scores={CraftFullInv=0}] run clear @s dirt{Base:{Vanilla:1b}} 4
execute if entity @s[scores={CraftFullInv=0}] run give @s grass_block{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Grass Block","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}} 4
execute if entity @s[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if entity @s[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#