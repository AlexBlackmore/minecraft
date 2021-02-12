#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
data remove storage blue:stats Hook
execute if entity @p[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run data modify storage blue:item Hook set from entity @p SelectedItem
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run data modify storage blue:item Hook set from entity @p Inventory[{Slot:-106b}]

execute store result score @s P_BaseDamage run data get storage blue:item Hook.tag.Base.Damage
execute store result score @s P_Strength run data get storage blue:item Hook.tag.Base.Strength
execute store result score @s E_SpikedHook run data get storage blue:item Hook.tag.Base.Enchantments[{spiked_hook:{identifier:1b}}].spiked_hook.bonus
execute if data storage blue:item Hook.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run tag @s add TelekinesisEnchant

scoreboard players operation @s P_Strength += @p P_Strength
scoreboard players operation @s P_BaseDamage += @p P_BaseDamage
scoreboard players operation @s P_CritChance = @p P_CritChance
scoreboard players operation @s P_CritDamage = @p P_CritDamage
scoreboard players operation @s PlayerID = @p PlayerID
scoreboard players reset @p ShotRod
#------------------------------------------#