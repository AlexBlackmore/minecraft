#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SETUP STORAGE---------------#
data remove storage blue:stats Bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow"}}] run data modify storage blue:item Bow set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify storage blue:item Bow set from entity @p SelectedItem
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:bow"}}] unless entity @p[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify storage blue:item Bow set from entity @p Inventory[{Slot:-106b}]
#---------------BASIC STATS----------------#
execute store result score @s P_BaseDamage run data get storage blue:item Bow.tag.Base.Damage
execute store result score @s P_Strength run data get storage blue:item Bow.tag.Base.Strength
scoreboard players operation @s P_Strength += @p P_Strength
scoreboard players operation @s P_BaseDamage += @p P_BaseDamage
scoreboard players operation @s P_CritChance = @p P_CritChance
scoreboard players operation @s P_CritDamage = @p P_CritDamage
scoreboard players operation @s PlayerID = @p PlayerID
#---------------ENCHANTMENTS---------------#
execute store result score @s E_BowPower run data get storage blue:item Bow.tag.Base.Enchantments[{power:{identifier:1b}}].power.bonus
execute store result score @s E_BowCubism run data get storage blue:item Bow.tag.Base.Enchantments[{cubism:{identifier:1b}}].cubism.bonus
execute store result score @s E_BowDragHunt run data get storage blue:item Bow.tag.Base.Enchantments[{dragon_hunter:{identifier:1b}}].dragon_hunter.bonus
execute store result score @s E_BowImpaling run data get storage blue:item Bow.tag.Base.Enchantments[{impaling:{identifier:1b}}].impaling.bonus_pt1
execute store result score @s E_BowAiming run data get storage blue:item Bow.tag.Base.Enchantments[{aiming:{identifier:1b}}].aiming.level
execute store result score @s E_BowSnipe run data get storage blue:item Bow.tag.Base.Enchantments[{snipe:{identifier:1b}}].snipe.level
execute if data storage blue:item Bow.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run tag @s add TelekinesisEnchant
execute if data storage blue:item Bow.tag.Base.Enchantments[{piercing:{identifier:1b}}] run tag @s add PiercingEnchant
scoreboard players set $EnchantBonus Temp 0
execute as @p if entity @s[gamemode=!creative] store result score $EnchantBonus Temp run data get storage blue:item Bow.tag.Base.Enchantments[{infinite_quiver:{identifier:1b}}].infinite_quiver.bonus
execute if score $EnchantBonus Temp matches 1.. run function enchanting:enchants/infinite_quiver
#------------------SETUP-------------------#
data merge entity @s {PierceLevel:4b}
scoreboard players reset @p ShootBow
scoreboard players reset @p[scores={ShootCrossbow=1..}] ShootCrossbow
#------------------------------------------#