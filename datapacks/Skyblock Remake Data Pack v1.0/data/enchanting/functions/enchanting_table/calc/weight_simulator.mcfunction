#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------PREPARE ENCHANT CALCULATOR--------#
tag @e remove EnchantStandSel
#-------------GET TOTAL WEIGHT-------------#
scoreboard players set @s E_Weight 0
execute at @s as @e[tag=EnchantStandList] run scoreboard players operation @e[tag=MenuChest,sort=nearest,limit=1] E_Weight += @s E_Weight
#----RANDOM NUMBER FROM 0..TOTAL WEIGHT----#
scoreboard players set in RandMath 0
scoreboard players operation in1 RandMath = @s E_Weight
function skyblock:random/range_lcg
scoreboard players operation @s E_Weight = out RandMath
#-FIND 1ST ENCHANT USING WEIGHTED SELECTION#
#   In detail, Minecraft uses the following weighted random selection algorithm:
#       1 Calculate the total weight of all enchantments in the list (T).
#       2 Pick a random integer in the half range [0; T) as a number w.
#       3 Iterate through each enchantment in the list, subtracting its weight from w. If w is now negative, select the current enchantment.
#   This algorithm produces the same results as listing each enchantment the number of times given by its weight, then choosing a random entry from the combined list.
tag @e remove EnchantStandWeightCalc
tag @e[tag=EnchantStandList] add EnchantStandWeightCalc
execute at @s as @e[tag=EnchantStandWeightCalc,limit=1] run function enchanting:enchanting_table/calc/weight_loop
#------REMOVE FUTURE ENCHANT CONFLICTS-----#
execute if entity @e[tag=EnchantStandSel,tag=EnchantConflictGroup1] run tag @e[tag=EnchantConflictGroup1] remove EnchantStandList
execute if entity @e[tag=EnchantStandSel,tag=EnchantConflictGroup2] run tag @e[tag=EnchantConflictGroup2] remove EnchantStandList
execute if entity @e[tag=EnchantStandSel,tag=EnchantConflictGroup3] run tag @e[tag=EnchantConflictGroup3] remove EnchantStandList
execute if entity @e[tag=EnchantStandSel,tag=EnchantConflictGroup4] run tag @e[tag=EnchantConflictGroup4] remove EnchantStandList
execute if entity @e[tag=EnchantStandSel,tag=EnchantConflictGroup5] run tag @e[tag=EnchantConflictGroup5] remove EnchantStandList
tag @e[tag=EnchantStandSel] remove EnchantStandList
#------------------------------------------#