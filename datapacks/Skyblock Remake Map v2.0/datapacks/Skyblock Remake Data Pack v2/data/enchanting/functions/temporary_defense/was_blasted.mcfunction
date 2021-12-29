#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
scoreboard players reset $DamageOutput Temp
advancement revoke @s only enchanting:temporary_defense/was_blasted
scoreboard players set @s P_DamageTaken 410
#-------------BLAST PROTECTION-------------#
scoreboard players set @s E_BonusDef 0
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:100b}].tag.Base.Enchantments[{blast_protection:{identifier:1b}}].blast_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:101b}].tag.Base.Enchantments[{blast_protection:{identifier:1b}}].blast_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:102b}].tag.Base.Enchantments[{blast_protection:{identifier:1b}}].blast_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Enchantments[{blast_protection:{identifier:1b}}].blast_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
#------------------------------------------#