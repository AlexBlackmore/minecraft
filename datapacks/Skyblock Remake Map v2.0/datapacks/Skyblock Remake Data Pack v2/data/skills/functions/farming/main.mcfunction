#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FARMING------------------#
execute if score @s B_Wheat matches 1.. run function skills:farming/wheat
execute if score @s B_Potato matches 1.. run function skills:farming/potato
execute if score @s B_Carrot matches 1.. run function skills:farming/carrot
execute if score @s B_Cocoa matches 1.. run function skills:farming/cocoa
execute if score @s B_SugarCane matches 1.. run function skills:farming/sugar_cane
execute if score @s B_Melon matches 1.. run function skills:farming/melon
execute if score @s B_Pumpkin matches 1.. run function skills:farming/pumpkin
execute if score @s B_Cactus matches 1.. run function skills:farming/cactus
execute if score @s B_BrownMushroom matches 1.. run function skills:farming/brown_mushroom
execute if score @s B_RedMushroom matches 1.. run function skills:farming/red_mushroom

execute if score @s U_SugarCane matches 1.. run function skills:farming/used/sugar_cane
execute if score @s U_Melon matches 1.. run function skills:farming/used/melon
execute if score @s U_Pumpkin matches 1.. run function skills:farming/used/pumpkin
execute if score @s U_Cactus matches 1.. run function skills:farming/used/cactus
execute if score @s U_BrownMushroom matches 1.. run function skills:farming/used/brown_mushroom
execute if score @s U_RedMushroom matches 1.. run function skills:farming/used/red_mushroom

#Chicken, Cow, Sheep, Rabbit And Pig Drop Farming XP is done inside items:new_item/give_rarity
#------------------------------------------#