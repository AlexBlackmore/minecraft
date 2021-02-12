#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD STATS-----------------#
execute store result score Temp P_AStrength run data get storage blue:item CalcStatAccessory.tag.Base.Strength
scoreboard players operation @s P_AStrength += Temp P_AStrength
execute store result score Temp P_AHealth run data get storage blue:item CalcStatAccessory.tag.Base.Health
scoreboard players operation @s P_AHealth += Temp P_AHealth
execute store result score Temp P_ADefense run data get storage blue:item CalcStatAccessory.tag.Base.Defense
scoreboard players operation @s P_ADefense += Temp P_ADefense
execute store result score Temp P_ASpeed run data get storage blue:item CalcStatAccessory.tag.Base.Speed
scoreboard players operation @s P_ASpeed += Temp P_ASpeed
execute store result score Temp P_ACritChan run data get storage blue:item CalcStatAccessory.tag.Base.CritChan
scoreboard players operation @s P_ACritChan += Temp P_ACritChan
execute store result score Temp P_ACritDmg run data get storage blue:item CalcStatAccessory.tag.Base.CritDmg
scoreboard players operation @s P_ACritDmg += Temp P_ACritDmg
execute store result score Temp P_AIntelligence run data get storage blue:item CalcStatAccessory.tag.Base.Intel
scoreboard players operation @s P_AIntelligence += Temp P_AIntelligence
execute store result score Temp P_ASCChance run data get storage blue:item CalcStatAccessory.tag.Base.SCChance
scoreboard players operation @s P_ASCChance += Temp P_ASCChance
execute store result score Temp P_AMagicFind run data get storage blue:item CalcStatAccessory.tag.Base.MagicFind
scoreboard players operation @s P_AMagicFind += Temp P_AMagicFind
execute store result score Temp P_APetLuck run data get storage blue:item CalcStatAccessory.tag.Base.PetLuck
scoreboard players operation @s P_APetLuck += Temp P_APetLuck
execute store result score Temp P_ATrueDef run data get storage blue:item CalcStatAccessory.tag.Base.TrueDef
scoreboard players operation @s P_ATrueDef += Temp P_ATrueDef
execute store result score Temp P_AAtkSpeed run data get storage blue:item CalcStatAccessory.tag.Base.AtkSpd
scoreboard players operation @s P_AAtkSpeed += Temp P_AAtkSpeed
scoreboard players set Temp P_AHealth 0
scoreboard players set Temp P_ADefense 0
scoreboard players set Temp P_AStrength 0
scoreboard players set Temp P_ASpeed 0
scoreboard players set Temp P_ACritChance 0
scoreboard players set Temp P_ACritDamage 0
scoreboard players set Temp P_AIntelligence 0
scoreboard players set Temp P_ASCChance 0
scoreboard players set Temp P_AMagicFind 0
scoreboard players set Temp P_APetLuck 0
scoreboard players set Temp P_ATrueDef 0
scoreboard players set Temp P_AAtkSpeed 0
#------------------------------------------#