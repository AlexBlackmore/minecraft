#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------GET LEVELS OF BOTH ITEMS---------#
execute store result score @s Anvil_Item1 run data get storage blue:anvil Items[{Slot:20b}].tag.Base.Enchantments[{efficiency:{identifier:1b}}].efficiency.level
execute store result score @s Anvil_Item2 run data get storage blue:anvil Items[{Slot:24b}].tag.Base.Enchantments[{efficiency:{identifier:1b}}].efficiency.level
#-------INCREASE LEVEL IF THEY MATCH-------#
execute unless score CapEnchantLevels Setting matches 0 if entity @s[scores={Anvil_Item1=..4}] if score @s Anvil_Item2 = @s Anvil_Item1 run scoreboard players add @s Anvil_Item1 1
execute if score CapEnchantLevels Setting matches 0 if score @s Anvil_Item2 = @s Anvil_Item1 run scoreboard players add @s Anvil_Item1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s Anvil_Item2 > @s Anvil_Item1 run scoreboard players operation @s Anvil_Item1 = @s Anvil_Item2
#-------ADD ENCHANT IF NOT ON ITEM 1-------#
execute unless data storage blue:anvil ResultItem.tag.Base.Enchantments[].efficiency run data modify storage blue:anvil ResultItem.tag.Base.Enchantments append value {efficiency:{identifier:1b,level:1}}
#--------SET LEVEL TO DECIDED VALUE--------#
execute store result storage blue:anvil ResultItem.tag.Base.Enchantments[{efficiency:{identifier:1b}}].efficiency.level int 1 run scoreboard players get @s Anvil_Item1
#---------------ADD XP COST----------------#
scoreboard players operation @s Anvil_Item1 *= c10 Constant
scoreboard players operation @s Anvil_Level += @s Anvil_Item1
#------------------------------------------#