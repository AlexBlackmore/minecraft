#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------BREAK BLOCK----------------#
kill @e[tag=BlockRevamp,tag=EnchantingTable,sort=nearest,limit=1]
execute align xyz positioned ~0.5 ~-0.6 ~0.5 run kill @e[tag=EB,distance=..0.5]
setblock ~ ~ ~ air destroy
execute if entity @p[gamemode=!creative] run summon item ^ ^ ^0.3 {PickupDelay:15,Item:{id:"minecraft:enchanting_table",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Enchanting Table","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
#------------------------------------------#