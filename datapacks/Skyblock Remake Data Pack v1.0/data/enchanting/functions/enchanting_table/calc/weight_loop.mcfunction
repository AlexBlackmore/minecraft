#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------PREPARE ENCHANT CALCULATOR--------#
tag @s remove EnchantStandWeightCalc
scoreboard players operation @e[tag=MenuChest,sort=nearest,limit=1] E_Weight -= @s E_Weight
execute unless score @e[tag=MenuChest,sort=nearest,limit=1] E_Weight matches 1.. run tag @s add EnchantStandSel
execute if score @e[tag=MenuChest,sort=nearest,limit=1] E_Weight matches 1.. as @e[tag=EnchantStandWeightCalc,limit=1] run function enchanting:enchanting_table/calc/weight_loop
#------------------------------------------#