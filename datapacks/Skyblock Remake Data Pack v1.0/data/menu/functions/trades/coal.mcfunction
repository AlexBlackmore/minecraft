#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TRADE-------------------#
execute if entity @s[scores={CraftFullInv=0}] run clear @s oak_log{Base:{Vanilla:1b}} 1
execute if entity @s[scores={CraftFullInv=0}] run give @s coal{Base:{Vanilla:1b,Type:"BREWING INGREDIENT",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Coal","color":"white","italic":false}',Lore:['[{"text":"Brewing Ingredient","color":"dark_gray","italic":false}]','[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}} 2
execute if entity @s[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if entity @s[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#