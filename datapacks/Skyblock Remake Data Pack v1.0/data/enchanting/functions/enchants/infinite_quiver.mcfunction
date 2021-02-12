#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------STATS-------------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath <= $EnchantBonus Temp run give @p arrow{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Arrow","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}
#------------------------------------------#