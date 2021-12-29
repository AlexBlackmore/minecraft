#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
scoreboard players reset $DamageOutput Temp
advancement revoke @s only enchanting:temporary_defense/was_shot
scoreboard players operation @s P_DamageTaken = @e[tag=MobArrow,sort=nearest,limit=1,tag=!inGround] P_BaseDamage
scoreboard players operation @s P_DamageTaken *= c5 Constant
kill @e[tag=MobArrow,sort=nearest,limit=1,tag=!inGround]
#-------------PROJECTILE PROT--------------#
scoreboard players set @s E_BonusDef 0
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:100b}].tag.Base.Enchantments[{projectile_protection:{identifier:1b}}].projectile_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:101b}].tag.Base.Enchantments[{projectile_protection:{identifier:1b}}].projectile_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:102b}].tag.Base.Enchantments[{projectile_protection:{identifier:1b}}].projectile_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
execute store result score $BonusDefAdd Temp run data get entity @s Inventory[{Slot:103b}].tag.Base.Enchantments[{projectile_protection:{identifier:1b}}].projectile_protection.bonus
scoreboard players operation @s E_BonusDef += $BonusDefAdd Temp
#------------------------------------------#