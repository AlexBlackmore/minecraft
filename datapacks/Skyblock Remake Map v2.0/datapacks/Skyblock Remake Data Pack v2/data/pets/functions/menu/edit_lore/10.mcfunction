#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
tag @s add MenuEdit
data modify storage blue:item PetMenu[10].tag.Description set value []
data modify storage blue:pets EditPet set from storage blue:item PetMenu[10]
data modify storage blue:pets EditPet.tag.Description set value ['[{"text":"Click to despawn","color":"red","italic":false}]']
function items:edit_lore/begin/pet
tag @s remove MenuEdit
data modify storage blue:item PetMenu[10] set from storage blue:pets EditPet
#------------------------------------------#