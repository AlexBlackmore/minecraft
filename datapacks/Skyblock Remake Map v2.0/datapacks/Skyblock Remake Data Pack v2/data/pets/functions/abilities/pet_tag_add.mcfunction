#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------TAGS-------------------#
function skyblock:multiplayer_storage/get
data modify storage blue:pets PetAbility set from storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}]
execute store result score $PetRarityID Temp run data get storage blue:pets PetAbility.tag.Base.RarityID
execute store result score $Ability1RarityID Temp run data get storage blue:pets PetAbility.tag.Base.Abilities[0].RarityID
execute store result score $Ability2RarityID Temp run data get storage blue:pets PetAbility.tag.Base.Abilities[1].RarityID
execute store result score $Ability3RarityID Temp run data get storage blue:pets PetAbility.tag.Base.Abilities[2].RarityID
execute store result score $Ability4RarityID Temp run data get storage blue:pets PetAbility.tag.Base.Abilities[3].RarityID
function pets:abilities/ability_list
function skyblock:multiplayer_storage/save
#------------------------------------------#