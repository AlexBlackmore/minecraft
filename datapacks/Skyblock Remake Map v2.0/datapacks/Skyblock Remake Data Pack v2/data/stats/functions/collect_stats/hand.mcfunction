#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------HELD ENCHANTS---------------#
execute if data storage blue:item {SelectedItem:{tag:{Base:{Enchantments:[{experience:{identifier:1b}}]}}}} run tag @s add Held_Experience
execute if data storage blue:item {SelectedItem:{tag:{Base:{Enchantments:[{fortune:{identifier:1b}}]}}}} run tag @s add Held_Fortune
execute if data storage blue:item {SelectedItem:{tag:{Base:{Enchantments:[{harvesting:{identifier:1b}}]}}}} run tag @s add Held_Harvesting
#------------------STATS-------------------#
execute store result score @s P_BonusStrength run data get entity @s SelectedItem.tag.Base.Strength
execute store result score @s P_BonusHealth run data get entity @s SelectedItem.tag.Base.Health
execute store result score @s P_BonusDefense run data get entity @s SelectedItem.tag.Base.Defense
execute store result score @s P_BonusSpeed run data get entity @s SelectedItem.tag.Base.Speed
execute store result score @s P_BonusCritChan run data get entity @s SelectedItem.tag.Base.CritChan
execute store result score @s P_BonusCritDmg run data get entity @s SelectedItem.tag.Base.CritDmg
execute store result score @s P_BonusIntel run data get entity @s SelectedItem.tag.Base.Intel
execute store result score @s P_BonusSCChance run data get entity @s SelectedItem.tag.Base.SCChance
execute store result score @s P_BonusMagicFind run data get entity @s SelectedItem.tag.Base.MagicFind
execute store result score @s P_BonusPetLuck run data get entity @s SelectedItem.tag.Base.PetLuck
execute store result score @s P_BonusTrueDef run data get entity @s SelectedItem.tag.Base.TrueDef
execute store result score @s P_BonusAtkSpeed run data get entity @s SelectedItem.tag.Base.AtkSpd
execute store result score @s P_BonusAbilDmg run data get entity @s SelectedItem.tag.Base.AbilDmg
execute store result score @s P_BonusFerocity run data get entity @s SelectedItem.tag.Base.Ferocity
execute store result score @s F_BonusTreasureC run data get entity @s SelectedItem.tag.Base.Enchantments[{luck_of_the_sea:{identifier:1b}}].luck_of_the_sea.level 10
#------------------------------------------#