#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute store result score $BaseAbility1_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[0][0] 10
execute store result score $BaseAbility1_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[0][1] 10
execute store result score $BaseAbility2_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[1][0] 10
execute store result score $BaseAbility2_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[1][1] 10
execute store result score $BaseAbility3_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[2][0] 10
execute store result score $BaseAbility3_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[2][1] 10
execute store result score $BaseAbility4_1 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[3][0] 10
execute store result score $BaseAbility4_2 Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Ability[3][1] 10

execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][0] double 0.1 run scoreboard players get $BaseAbility1_1 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[0][1] double 0.1 run scoreboard players get $BaseAbility1_2 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][0] double 0.1 run scoreboard players get $BaseAbility2_1 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[1][1] double 0.1 run scoreboard players get $BaseAbility2_2 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][0] double 0.1 run scoreboard players get $BaseAbility3_1 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[2][1] double 0.1 run scoreboard players get $BaseAbility3_2 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][0] double 0.1 run scoreboard players get $BaseAbility4_1 Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.BaseAbilityStats[3][1] double 0.1 run scoreboard players get $BaseAbility4_2 Temp

#------------------------------------------#