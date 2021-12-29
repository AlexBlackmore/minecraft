#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
tellraw @s [{"nbt":"SelectedItem.tag.Base.RarityColor","entity":"@s","interpret":true},{"text":"Successfully added ","color":"green"},{"nbt":"SelectedItem.tag.Base.PetData.Name","entity":"@s"},{"text":" to your pet menu!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

function skyblock:multiplayer_storage/get
data modify storage blue:pets EditPet set from entity @s SelectedItem
data modify storage blue:pets EditPet.tag.Description set value ['[{"text":"Click to summon","color":"yellow","italic":false}]']
tag @s add MenuEdit
function items:edit_lore/begin/pet
tag @s remove MenuEdit
data modify storage blue:multiplayer_storage data.Pets append from storage blue:pets EditPet
function skyblock:multiplayer_storage/save

item replace entity @s weapon.mainhand with air
advancement revoke @s only pets:click_pet
#------------------------------------------#