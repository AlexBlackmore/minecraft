#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:golden_apple",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Golden Apple","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Golden Apple","color":"white"}]
#------------------------------------------#