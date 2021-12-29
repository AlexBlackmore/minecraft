#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
function skyblock:multiplayer_storage/get
data modify storage blue:pets PetExpGain set from storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}]
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Farming"} run function pets:exp_system/skills/farming
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Mining"} run function pets:exp_system/skills/mining
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Foraging"} run function pets:exp_system/skills/foraging
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Combat"} run function pets:exp_system/skills/combat
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Fishing"} run function pets:exp_system/skills/fishing
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Alchemy"} run function pets:exp_system/skills/alchemy
execute if data storage blue:pets PetExpGain.tag.Base.PetData{Skill:"Enchanting"} run function pets:exp_system/skills/enchanting
data modify storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}] set from storage blue:pets PetExpGain
function skyblock:multiplayer_storage/save

#------------------------------------------#