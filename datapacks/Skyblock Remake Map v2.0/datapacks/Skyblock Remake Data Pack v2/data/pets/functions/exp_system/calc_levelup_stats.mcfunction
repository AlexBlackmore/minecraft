#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute if score $CurrentPetLevel Temp matches 2 run function pets:exp_system/set_base_stats

execute store result score @s Pet_Strength run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Strength 10000
execute store result score @s Pet_Health run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Health 10000
execute store result score @s Pet_Defense run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Defense 10000
execute store result score @s Pet_Speed run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Speed 10000
execute store result score @s Pet_CritChan run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.CritChan 10000
execute store result score @s Pet_CritDmg run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.CritDmg 10000
execute store result score @s Pet_Intel run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Intel 10000
execute store result score @s Pet_SCChance run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.SCChance 10000
execute store result score @s Pet_MagicFind run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.MagicFind 10000
execute store result score @s Pet_PetLuck run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.PetLuck 10000
execute store result score @s Pet_TrueDef run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.TrueDef 10000
execute store result score @s Pet_AtkSpd run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.AtkSpd 10000
execute store result score @s Pet_Ferocity run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.Ferocity 10000
execute store result score @s Pet_AbilDmg run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.AbilDmg 10000
execute store result score @s Pet_MngSpd run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.MngSpd 10000
execute store result score @s Pet_MngFrtn run data get storage blue:pets PetExpGain.tag.Base.PetData.Stats.MngFrtn 10000

execute store result score $Temp Pet_Strength run data get storage blue:pets PetExpGain.tag.Base.BaseStrength 10000
execute store result score $Temp Pet_Health run data get storage blue:pets PetExpGain.tag.Base.BaseHealth 10000
execute store result score $Temp Pet_Defense run data get storage blue:pets PetExpGain.tag.Base.BaseDefense 10000
execute store result score $Temp Pet_Speed run data get storage blue:pets PetExpGain.tag.Base.BaseSpeed 10000
execute store result score $Temp Pet_CritChan run data get storage blue:pets PetExpGain.tag.Base.BaseCritChan 10000
execute store result score $Temp Pet_CritDmg run data get storage blue:pets PetExpGain.tag.Base.BaseCritDmg 10000
execute store result score $Temp Pet_Intel run data get storage blue:pets PetExpGain.tag.Base.BaseIntel 10000
execute store result score $Temp Pet_SCChance run data get storage blue:pets PetExpGain.tag.Base.BaseSCChance 10000
execute store result score $Temp Pet_MagicFind run data get storage blue:pets PetExpGain.tag.Base.BaseMagicFind 10000
execute store result score $Temp Pet_PetLuck run data get storage blue:pets PetExpGain.tag.Base.BasePetLuck 10000
execute store result score $Temp Pet_TrueDef run data get storage blue:pets PetExpGain.tag.Base.BaseTrueDef 10000
execute store result score $Temp Pet_AtkSpd run data get storage blue:pets PetExpGain.tag.Base.BaseAtkSpd 10000
execute store result score $Temp Pet_Ferocity run data get storage blue:pets PetExpGain.tag.Base.BaseFerocity 10000
execute store result score $Temp Pet_AbilDmg run data get storage blue:pets PetExpGain.tag.Base.BaseAbilDmg 10000
execute store result score $Temp Pet_MngSpd run data get storage blue:pets PetExpGain.tag.Base.BaseMngSpd 10000
execute store result score $Temp Pet_MngFrtn run data get storage blue:pets PetExpGain.tag.Base.BaseMngFrtn 10000

scoreboard players operation @s Pet_Strength *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_Health *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_Defense *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_Speed *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_CritChan *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_CritDmg *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_Intel *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_SCChance *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_MagicFind *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_PetLuck *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_TrueDef *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_AtkSpd *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_Ferocity *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_AbilDmg *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_MngSpd *= $CurrentPetLevel Temp
scoreboard players operation @s Pet_MngFrtn *= $CurrentPetLevel Temp

scoreboard players operation @s Pet_Strength += $Temp Pet_Strength
scoreboard players operation @s Pet_Health += $Temp Pet_Health
scoreboard players operation @s Pet_Defense += $Temp Pet_Defense
scoreboard players operation @s Pet_Speed += $Temp Pet_Speed
scoreboard players operation @s Pet_CritChan += $Temp Pet_CritChan
scoreboard players operation @s Pet_CritDmg += $Temp Pet_CritDmg
scoreboard players operation @s Pet_Intel += $Temp Pet_Intel
scoreboard players operation @s Pet_SCChance += $Temp Pet_SCChance
scoreboard players operation @s Pet_MagicFind += $Temp Pet_MagicFind
scoreboard players operation @s Pet_PetLuck += $Temp Pet_PetLuck
scoreboard players operation @s Pet_TrueDef += $Temp Pet_TrueDef
scoreboard players operation @s Pet_AtkSpd += $Temp Pet_AtkSpd
scoreboard players operation @s Pet_Ferocity += $Temp Pet_Ferocity
scoreboard players operation @s Pet_AbilDmg += $Temp Pet_AbilDmg
scoreboard players operation @s Pet_MngSpd += $Temp Pet_MngSpd
scoreboard players operation @s Pet_MngFrtn += $Temp Pet_MngFrtn

execute if data storage blue:pets PetExpGain.tag.Base.Strength store result storage blue:pets PetExpGain.tag.Base.Strength double 0.0001 run scoreboard players get @s Pet_Strength
execute if data storage blue:pets PetExpGain.tag.Base.Health store result storage blue:pets PetExpGain.tag.Base.Health double 0.0001 run scoreboard players get @s Pet_Health
execute if data storage blue:pets PetExpGain.tag.Base.Defense store result storage blue:pets PetExpGain.tag.Base.Defense double 0.0001 run scoreboard players get @s Pet_Defense
execute if data storage blue:pets PetExpGain.tag.Base.Speed store result storage blue:pets PetExpGain.tag.Base.Speed double 0.0001 run scoreboard players get @s Pet_Speed
execute if data storage blue:pets PetExpGain.tag.Base.CritChan store result storage blue:pets PetExpGain.tag.Base.CritChan double 0.0001 run scoreboard players get @s Pet_CritChan
execute if data storage blue:pets PetExpGain.tag.Base.CritDmg store result storage blue:pets PetExpGain.tag.Base.CritDmg double 0.0001 run scoreboard players get @s Pet_CritDmg
execute if data storage blue:pets PetExpGain.tag.Base.Intel store result storage blue:pets PetExpGain.tag.Base.Intel double 0.0001 run scoreboard players get @s Pet_Intel
execute if data storage blue:pets PetExpGain.tag.Base.SCChance store result storage blue:pets PetExpGain.tag.Base.SCChance double 0.0001 run scoreboard players get @s Pet_SCChance
execute if data storage blue:pets PetExpGain.tag.Base.MagicFind store result storage blue:pets PetExpGain.tag.Base.MagicFind double 0.0001 run scoreboard players get @s Pet_MagicFind
execute if data storage blue:pets PetExpGain.tag.Base.PetLuck store result storage blue:pets PetExpGain.tag.Base.PetLuck double 0.0001 run scoreboard players get @s Pet_PetLuck
execute if data storage blue:pets PetExpGain.tag.Base.TrueDef store result storage blue:pets PetExpGain.tag.Base.TrueDef double 0.0001 run scoreboard players get @s Pet_TrueDef
execute if data storage blue:pets PetExpGain.tag.Base.AtkSpd store result storage blue:pets PetExpGain.tag.Base.AtkSpd double 0.0001 run scoreboard players get @s Pet_AtkSpd
execute if data storage blue:pets PetExpGain.tag.Base.Ferocity store result storage blue:pets PetExpGain.tag.Base.Ferocity double 0.0001 run scoreboard players get @s Pet_Ferocity
execute if data storage blue:pets PetExpGain.tag.Base.AbilDmg store result storage blue:pets PetExpGain.tag.Base.AbilDmg double 0.0001 run scoreboard players get @s Pet_AbilDmg
execute if data storage blue:pets PetExpGain.tag.Base.MngSpd store result storage blue:pets PetExpGain.tag.Base.MngSpd double 0.0001 run scoreboard players get @s Pet_MngSpd
execute if data storage blue:pets PetExpGain.tag.Base.MngFrtn store result storage blue:pets PetExpGain.tag.Base.MngFrtn double 0.0001 run scoreboard players get @s Pet_MngFrtn






# Ability Stats
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[0][0] store result score $AbilityBonus1_1 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[0][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[0][1] store result score $AbilityBonus1_2 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[0][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[1][0] store result score $AbilityBonus2_1 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[1][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[1][1] store result score $AbilityBonus2_2 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[1][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[2][0] store result score $AbilityBonus3_1 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[2][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[2][1] store result score $AbilityBonus3_2 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[2][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[3][0] store result score $AbilityBonus4_1 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[3][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.AbilityBonuses[3][1] store result score $AbilityBonus4_2 Temp run data get storage blue:pets PetExpGain.tag.Base.AbilityBonuses[3][1] 10000

execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][0] store result score $BaseAbility1_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][1] store result score $BaseAbility1_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][0] store result score $BaseAbility2_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][1] store result score $BaseAbility2_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][0] store result score $BaseAbility3_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][1] store result score $BaseAbility3_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][1] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][0] store result score $BaseAbility4_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][0] 10000
execute if data storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][1] store result score $BaseAbility4_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][1] 10000


scoreboard players operation $AbilityBonus1_1 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus1_2 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus2_1 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus2_2 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus3_1 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus3_2 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus4_1 Temp *= $CurrentPetLevel Temp
scoreboard players operation $AbilityBonus4_2 Temp *= $CurrentPetLevel Temp

scoreboard players operation $AbilityBonus1_1 Temp += $BaseAbility1_1 Temp
scoreboard players operation $AbilityBonus1_2 Temp += $BaseAbility1_2 Temp
scoreboard players operation $AbilityBonus2_1 Temp += $BaseAbility2_1 Temp
scoreboard players operation $AbilityBonus2_2 Temp += $BaseAbility2_2 Temp
scoreboard players operation $AbilityBonus3_1 Temp += $BaseAbility3_1 Temp
scoreboard players operation $AbilityBonus3_2 Temp += $BaseAbility3_2 Temp
scoreboard players operation $AbilityBonus4_1 Temp += $BaseAbility4_1 Temp
scoreboard players operation $AbilityBonus4_2 Temp += $BaseAbility4_2 Temp

scoreboard players operation $AbilityStat1_1 Temp = $AbilityBonus1_1 Temp
scoreboard players operation $AbilityStat1_2 Temp = $AbilityBonus1_2 Temp
scoreboard players operation $AbilityStat2_1 Temp = $AbilityBonus2_1 Temp
scoreboard players operation $AbilityStat2_2 Temp = $AbilityBonus2_2 Temp
scoreboard players operation $AbilityStat3_1 Temp = $AbilityBonus3_1 Temp
scoreboard players operation $AbilityStat3_2 Temp = $AbilityBonus3_2 Temp
scoreboard players operation $AbilityStat4_1 Temp = $AbilityBonus4_1 Temp
scoreboard players operation $AbilityStat4_2 Temp = $AbilityBonus4_2 Temp

data remove storage blue:pets AbilityStat1
data remove storage blue:pets AbilityStat2
data remove storage blue:pets AbilityStat3
data remove storage blue:pets AbilityStat4

data modify storage blue:pets AbilityStat1 append from storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[0][]
data modify storage blue:pets AbilityStat2 append from storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[1][]
data modify storage blue:pets AbilityStat3 append from storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[2][]
data modify storage blue:pets AbilityStat4 append from storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[3][]


execute if data storage blue:pets AbilityStat1[0] store result storage blue:pets AbilityStat1[0] double 0.0001 run scoreboard players get $AbilityStat1_1 Temp
execute if data storage blue:pets AbilityStat1[1] store result storage blue:pets AbilityStat1[1] double 0.0001 run scoreboard players get $AbilityStat1_2 Temp

execute if data storage blue:pets AbilityStat2[0] store result storage blue:pets AbilityStat2[0] double 0.0001 run scoreboard players get $AbilityStat2_1 Temp
execute if data storage blue:pets AbilityStat2[1] store result storage blue:pets AbilityStat2[1] double 0.0001 run scoreboard players get $AbilityStat2_2 Temp

execute if data storage blue:pets AbilityStat3[0] store result storage blue:pets AbilityStat3[0] double 0.0001 run scoreboard players get $AbilityStat3_1 Temp
execute if data storage blue:pets AbilityStat3[1] store result storage blue:pets AbilityStat3[1] double 0.0001 run scoreboard players get $AbilityStat3_2 Temp

execute if data storage blue:pets AbilityStat4[0] store result storage blue:pets AbilityStat4[0] double 0.0001 run scoreboard players get $AbilityStat4_1 Temp
execute if data storage blue:pets AbilityStat4[1] store result storage blue:pets AbilityStat4[1] double 0.0001 run scoreboard players get $AbilityStat4_2 Temp

data modify storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[0] set from storage blue:pets AbilityStat1
data modify storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[1] set from storage blue:pets AbilityStat2
data modify storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[2] set from storage blue:pets AbilityStat3
data modify storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[3] set from storage blue:pets AbilityStat4
#------------------------------------------#