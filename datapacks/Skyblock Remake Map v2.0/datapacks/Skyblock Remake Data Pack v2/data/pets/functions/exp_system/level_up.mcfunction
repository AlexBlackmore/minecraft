#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute store result score $PetLevel Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Level
scoreboard players add $PetLevel Temp 1
execute store result storage blue:pets PetExpGain.tag.Base.PetData.Current.Level int 1 run scoreboard players get $PetLevel Temp

execute store result score $CurrentPetXP Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.XP
execute store result score $CurrentNextPetXP Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.NextLevelXP
scoreboard players operation $CurrentPetXP Temp -= $CurrentNextPetXP Temp
execute store result score $CurrentPetLevel Temp run data get storage blue:pets PetExpGain.tag.Base.PetData.Current.Level

execute store result storage blue:pets PetExpGain.tag.Base.PetData.Current.XP int 1 run scoreboard players get $CurrentPetXP Temp
tellraw @s [{"nbt":"PetExpGain.tag.Base.RarityColor","interpret":true,"storage":"blue:pets"},{"text":"Your ","color":"green"},{"nbt":"PetExpGain.tag.Base.PetData.Name","storage":"blue:pets"},{"text":" levelled up to level ","color":"green"},{"score":{"name":"$PetLevel","objective":"Temp"},"color":"blue"},{"text":"!","color":"green"}]
function pets:exp_system/calc_next_xp
function pets:exp_system/calc_levelup_stats
function pets:exp_system/update_name
function pets:custom_name/update

execute unless score $CurrentPetLevel Temp matches 100.. if score $CurrentPetXP Temp >= $CurrentNextPetXP Temp run function pets:exp_system/level_up
#------------------------------------------#