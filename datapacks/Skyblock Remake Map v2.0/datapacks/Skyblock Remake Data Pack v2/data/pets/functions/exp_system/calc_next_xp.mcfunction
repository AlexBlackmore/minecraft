#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute if data storage blue:pets PetExpGain.tag.Base.PetData{XPTable:"COMMON"} run function pets:exp_system/calc_next_xp/common
execute if data storage blue:pets PetExpGain.tag.Base.PetData{XPTable:"UNCOMMON"} run function pets:exp_system/calc_next_xp/uncommon
execute if data storage blue:pets PetExpGain.tag.Base.PetData{XPTable:"RARE"} run function pets:exp_system/calc_next_xp/rare
execute if data storage blue:pets PetExpGain.tag.Base.PetData{XPTable:"EPIC"} run function pets:exp_system/calc_next_xp/epic
execute if data storage blue:pets PetExpGain.tag.Base.PetData{XPTable:"LEGENDARY"} run function pets:exp_system/calc_next_xp/legendary

execute store result storage blue:pets PetExpGain.tag.Base.PetData.Current.NextLevelXP int 1 run scoreboard players get $NextXP Temp
#------------------------------------------#