#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
function skyblock:multiplayer_storage/get

execute as @e[tag=Pet] if score @s PlayerID = @p PlayerID run tag @s add Despawning

execute if entity @s[tag=!SpawningPet] run tellraw @s [{"nbt":"data.Pets[{tag:{Base:{PetSpawned:1b}}}].tag.Base.RarityColor","storage":"blue:multiplayer_storage","interpret":true},{"text":"You despawned your ","color":"green"},{"nbt":"data.Pets[{tag:{Base:{PetSpawned:1b}}}].tag.Base.PetData.Name","storage":"blue:multiplayer_storage"},{"text":"!","color":"green"}]
execute as @e[tag=Pet] at @s as @e[tag=PetName] if score @s PlayerID = @e[tag=Pet,sort=nearest,limit=1] PlayerID run kill @s
kill @e[tag=Despawning]
function pets:abilities/pet_tag_remove

data remove storage blue:pets EditPet
data modify storage blue:pets EditPet set from storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}]
data modify storage blue:pets EditPet.tag.Description set value ['[{"text":"Click to summon","color":"yellow","italic":false}]']
tag @s add MenuEdit

function items:edit_lore/begin/pet
tag @s remove MenuEdit
data modify storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}] set from storage blue:pets EditPet


data remove storage blue:multiplayer_storage data.Pets[0].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[1].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[2].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[3].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[4].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[5].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[6].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[7].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[8].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[9].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[10].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[11].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[12].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[13].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[14].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[15].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[16].tag.Base.PetSpawned
data remove storage blue:multiplayer_storage data.Pets[17].tag.Base.PetSpawned

data remove storage blue:item PetMenu[0].tag.Base.PetSpawned
data remove storage blue:item PetMenu[1].tag.Base.PetSpawned
data remove storage blue:item PetMenu[2].tag.Base.PetSpawned
data remove storage blue:item PetMenu[3].tag.Base.PetSpawned
data remove storage blue:item PetMenu[4].tag.Base.PetSpawned
data remove storage blue:item PetMenu[5].tag.Base.PetSpawned
data remove storage blue:item PetMenu[6].tag.Base.PetSpawned
data remove storage blue:item PetMenu[7].tag.Base.PetSpawned
data remove storage blue:item PetMenu[8].tag.Base.PetSpawned
data remove storage blue:item PetMenu[9].tag.Base.PetSpawned
data remove storage blue:item PetMenu[10].tag.Base.PetSpawned
data remove storage blue:item PetMenu[11].tag.Base.PetSpawned
data remove storage blue:item PetMenu[12].tag.Base.PetSpawned
data remove storage blue:item PetMenu[13].tag.Base.PetSpawned
data remove storage blue:item PetMenu[14].tag.Base.PetSpawned
data remove storage blue:item PetMenu[15].tag.Base.PetSpawned
data remove storage blue:item PetMenu[16].tag.Base.PetSpawned
data remove storage blue:item PetMenu[17].tag.Base.PetSpawned

execute if entity @s[tag=!SpawningPet] run function menu:remove_menu
execute if entity @s[tag=!SpawningPet] run function skyblock:multiplayer_storage/save

tag @s remove PetSpawned


function stats:calculate/stats
#------------------------------------------#