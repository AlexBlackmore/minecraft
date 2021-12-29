#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"PetExpGain.tag.Base.RarityColor\",\"storage\":\"blue:pets\",\"italic\":false,\"interpret\":true},{\"text\":\"[Lvl \",\"color\":\"gray\",\"italic\":false},{\"score\":{\"name\":\"$CurrentPetLevel\",\"objective\":\"Temp\"},\"color\":\"gray\",\"italic\":false},{\"text\":\"] \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"PetExpGain.tag.Base.PetData.Name\",\"storage\":\"blue:pets\",\"italic\":false}]"} replace
data modify storage blue:pets PetExpGain.tag.display.Name set from block 29999978 1 29832 Text1
#------------------------------------------#