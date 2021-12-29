#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TRADE-------------------#
execute if entity @s[scores={CraftFullInv=0}] run clear @s bone{Base:{Vanilla:1b}} 64
execute if entity @s[scores={CraftFullInv=0}] run give @s stick{Enchantments:[{}],CustomModelData:5,Base:{Skyblock:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Enchanted Bone Meal","color":"white","italic":false}',Lore:['[{"text":"Instantly grows crops and ","color":"gray","italic":false}]','[{"text":"saplings.","color":"gray","italic":false}]','[{"text":" "}]','[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}} 1
execute if entity @s[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute if entity @s[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#