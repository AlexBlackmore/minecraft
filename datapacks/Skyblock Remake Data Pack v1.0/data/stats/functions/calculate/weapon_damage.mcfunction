#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
scoreboard players set $WeaponDamage Temp 0
scoreboard players set $DmgMultTotal Temp 0
data remove storage blue:stats Weapon
data modify storage blue:stats Weapon set from entity @p[tag=TargetEntity] SelectedItem
#-----------GET STATS (IF PLAYER)----------#
execute store result score $WeaponDamage Temp as @p[tag=TargetEntity] unless data storage blue:stats {Weapon:{tag:{Base:{Type:"BOW"}}}} unless data storage blue:stats {Weapon:{tag:{Base:{Type:"FISHING ROD"}}}} run data get storage blue:stats Weapon.tag.Base.Damage
scoreboard players operation $WeaponDamage Temp += @p[tag=TargetEntity] P_BaseDamage
scoreboard players operation $WeaponStrength Temp = @p[tag=TargetEntity] P_Strength
#---------GET STATS (IF PROJECTILE)--------#
scoreboard players operation $WeaponDamage Temp = @e[sort=nearest,limit=1,tag=TargetEntity,type=#stats:arrow_or_hook] P_BaseDamage
scoreboard players operation $WeaponStrength Temp = @e[sort=nearest,limit=1,tag=TargetEntity,type=#stats:arrow_or_hook] P_Strength
#---------------BASE FORMULA---------------#
scoreboard players operation $StrengthMultiplier Temp = $WeaponStrength Temp
scoreboard players add $StrengthMultiplier Temp 100
scoreboard players operation $DamageOutput Temp = $WeaponStrength Temp
scoreboard players operation $DamageOutput Temp /= c5 Constant
scoreboard players operation $DamageOutput Temp += $WeaponDamage Temp
scoreboard players operation $DamageOutput Temp *= $StrengthMultiplier Temp
scoreboard players operation $DamageOutput Temp /= c100 Constant
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow,tag=PiercingSecondary] run scoreboard players operation $DamageOutput Temp /= c4 Constant
scoreboard players operation $DamagePreMultiplier Temp = $DamageOutput Temp
#------------GET DMG MULTIPLIER------------#
#Bane of Arthropods, Cubism, Ender Slayer, Dragon Hunter, Impaling, Smite
execute if entity @s[type=#enchanting:check_success] run function enchanting:damage_multiplier/check_entity
#First Strike
execute if entity @s[tag=!FirstStriked,tag=!DragonGateHitbox] run function enchanting:damage_multiplier/first_strike
#Sharpness & Power
execute store result score $DmgMult Temp run data get storage blue:stats Weapon.tag.Base.Enchantments[{sharpness:{identifier:1b}}].sharpness.bonus
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] store result score $DmgMult Temp run scoreboard players get @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow] E_BowPower
scoreboard players operation $DmgMultTotal Temp += $DmgMult Temp
#Giant Killer
execute if data storage blue:stats Weapon.tag.Base.Enchantments[{giant_killer:{identifier:1b}}] run function enchanting:damage_multiplier/giant_killer
#Execute
execute if data storage blue:stats Weapon.tag.Base.Enchantments[{execute:{identifier:1b}}] run function enchanting:damage_multiplier/execute
#Snipe
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=arrow,scores={E_BowSnipe=1..}] run function enchanting:damage_multiplier/snipe
#Spiked Hook
execute if entity @e[sort=nearest,limit=1,tag=TargetEntity,type=fishing_bobber,scores={E_SpikedHook=1..}] run scoreboard players operation $DmgMultTotal Temp += @e[sort=nearest,limit=1,tag=TargetEntity,type=fishing_bobber,scores={E_SpikedHook=1..}] E_SpikedHook
#-----------APPLY DMG MULTIPLIER-----------#
execute if score $DmgMultTotal Temp matches 1.. run function enchanting:damage_multiplier/apply_multiplier
#---------------TEST FOR CRIT--------------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 99
function skyblock:random/range_lcg
execute if score @e[sort=nearest,limit=1,tag=TargetEntity] P_CritChance > out RandMath run function stats:calculate/crit_damage
#------------OTHER ENCHANTMENTS------------#
#Fire Aspect
execute if data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{fire_aspect:{identifier:1b}}]}}}} run function enchanting:enchants/fire_aspect
#Life Steal
scoreboard players operation $LifeStealVal Temp = $DamageOutput Temp
execute as @p[tag=TargetEntity] if data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{life_steal:{identifier:1b}}]}}}} run function enchanting:enchants/life_steal
#Thunderlord
execute unless data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{thunderlord:{identifier:1b}}]}}}} run scoreboard players reset @s ThunderlordHits
execute if data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{thunderlord:{identifier:1b}}]}}}} run scoreboard players add @s ThunderlordHits 1
execute if entity @s[scores={ThunderlordHits=3..}] at @s run function enchanting:enchants/thunderlord
#Cleave
execute if data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{cleave:{identifier:1b}}]}}}} run function enchanting:enchants/cleave
#Venomous
execute if data storage blue:stats {Weapon:{tag:{Base:{Enchantments:[{venomous:{identifier:1b}}]}}}} run function enchanting:enchants/venomous/main
#------------------------------------------#