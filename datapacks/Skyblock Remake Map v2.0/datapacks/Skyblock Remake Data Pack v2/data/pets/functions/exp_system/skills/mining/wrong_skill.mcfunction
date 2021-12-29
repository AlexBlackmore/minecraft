#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
scoreboard players operation $PetEXP Temp = $SkillEXP Temp
execute if score @s P_PetEXPBoost matches 1.. run function pets:exp_system/calc_exp_boost
execute store result score $CurrentPetXP Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.XP
execute store result score $CurrentNextPetXP Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.NextLevelXP
execute store result score $CurrentPetLevel Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Level

scoreboard players operation $PetEXP Temp /= c4 Constant
scoreboard players operation $PetEXP Temp += $CurrentPetXP Temp
execute store result storage blue:pets PetExpGain.tag.Base.PetData.Current.XP int 1 run scoreboard players get $PetEXP Temp
execute unless score $CurrentPetLevel Temp matches 100.. if score $PetEXP Temp >= $CurrentNextPetXP Temp run function pets:exp_system/level_up

#------------------------------------------#