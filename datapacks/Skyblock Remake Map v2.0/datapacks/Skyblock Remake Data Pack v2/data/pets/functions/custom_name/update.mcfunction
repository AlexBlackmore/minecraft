#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------------------------------#
function pets:custom_name/remove_team
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute at @s as @e[tag=PetName,distance=..6] if score @s PlayerID = @p PlayerID in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"PetExpGain.tag.Base.RarityColor\",\"storage\":\"blue:pets\",\"interpret\":true},{\"text\":\"[\",\"italic\":false,\"color\":\"dark_gray\"},{\"text\":\"Lv\",\"italic\":false,\"color\":\"gray\"},{\"score\":{\"name\":\"$CurrentPetLevel\",\"objective\":\"Temp\"},\"color\":\"gray\",\"italic\":false},{\"text\":\"] \",\"italic\":false,\"color\":\"dark_gray\"},{\"selector\":\"@p\",\"italic\":false},{\"text\":\"'s \"},{\"nbt\":\"PetExpGain.tag.Base.PetData.Name\",\"storage\":\"blue:pets\",\"italic\":false}]"} replace
execute at @s as @e[tag=PetName,distance=..6] if score @s PlayerID = @p PlayerID in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
function pets:custom_name/rejoin_team
