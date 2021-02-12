#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------LIFE STEAL----------------#
#Damage
scoreboard players operation $CleaveDmg Temp = $DamageOutput Temp
execute store result score $EnchantBonus Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{cleave:{identifier:1b}}].cleave.bonus
scoreboard players operation $CleaveDmg Temp *= $EnchantBonus Temp
scoreboard players operation $CleaveDmg Temp /= c100 Constant

#Effect Mobs
execute store result score $EnchantLevel Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{cleave:{identifier:1b}}].cleave.level
execute if score $EnchantLevel Temp matches 1 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..3.3] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 2 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..3.6] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 3 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..3.9] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 4 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..4.2] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 5 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..4.5] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 6 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..4.8] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 7 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..5.1] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 8 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..5.4] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 9 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..5.7] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 10 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..6.0] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 11 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..6.3] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 12 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..6.6] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 13 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..6.9] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 14 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..7.2] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 15 run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..7.5] ApplyDamage += $CleaveDmg Temp
execute if score $EnchantLevel Temp matches 16.. run scoreboard players operation @e[type=!#stats:show_hp,nbt={HurtTime:0s},tag=HasHealthDisplay,tag=!DragonGateHitbox,distance=..7.8] ApplyDamage += $CleaveDmg Temp
#------------------------------------------#