#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------HELD ENCHANTS---------------#
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Enchantments[{thorns:{identifier:1b}}].thorns.bonus
scoreboard players operation @s E_ThornsAmount += $CombineBonus Temp
#------------------STATS-------------------#
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Strength
scoreboard players operation @s P_BonusStrength += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Health
scoreboard players operation @s P_BonusHealth += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Defense
scoreboard players operation @s P_BonusDefense += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Speed
scoreboard players operation @s P_BonusSpeed += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.CritChan
scoreboard players operation @s P_BonusCritChan += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.CritDmg
scoreboard players operation @s P_BonusCritDmg += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Intel
scoreboard players operation @s P_BonusIntel += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.SCChance
scoreboard players operation @s P_BonusSCChance += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.MagicFind
scoreboard players operation @s P_BonusMagicFind += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.PetLuck
scoreboard players operation @s P_BonusPetLuck += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.TrueDef
scoreboard players operation @s P_BonusTrueDef += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.AtkSpd
scoreboard players operation @s P_BonusAtkSpeed += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.AbilDmg
scoreboard players operation @s P_BonusAbilDmg += $CombineBonus Temp
execute store result score $CombineBonus Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Ferocity
scoreboard players operation @s P_BonusFerocity += $CombineBonus Temp
#------------------------------------------#