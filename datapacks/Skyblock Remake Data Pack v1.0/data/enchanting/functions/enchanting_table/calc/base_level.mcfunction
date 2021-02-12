#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#Base enchantment level available (base) = (1..8 + floor(b / 2) + 0..b),
#-----------GET BOOKSHELF LEVEL------------#
function enchanting:enchanting_table/calc/bookshelves
scoreboard players operation @s E_BaseEnchLevel = @s E_AddBookshelves
scoreboard players operation @s E_BaseEnchLevel /= c2 Constant
#---------RANDOM NUMBER FROM 1..8----------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 8
function skyblock:random/range_lcg
#----------ADD IT TO BOOK LEVELS-----------#
scoreboard players operation @s E_BaseEnchLevel += out RandMath
#----RANDOM NUMBER FROM 0..NO. SHELVES-----#
scoreboard players set in RandMath 0
scoreboard players operation in1 RandMath = @s E_AddBookshelves
function skyblock:random/range_lcg
#----------ADD IT TO BOOK LEVELS-----------#
scoreboard players operation @s E_BaseEnchLevel += out RandMath
#------------------------------------------#