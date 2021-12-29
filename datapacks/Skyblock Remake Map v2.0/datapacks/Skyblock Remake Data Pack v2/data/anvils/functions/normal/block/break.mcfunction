#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------BREAK BLOCK----------------#
kill @e[tag=BlockRevamp,tag=Anvil,sort=nearest,limit=1]
setblock ~ ~ ~ air destroy
execute if entity @p[gamemode=!creative] run summon item ^ ^ ^0.3 {PickupDelay:20,Item:{id:"minecraft:anvil",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Anvil","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
#------------------------------------------#