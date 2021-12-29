#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
data modify storage blue:pets PetExpGain set from entity @s SelectedItem

execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"COMMON"} run function pets:max_pet/common
execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"UNCOMMON"} run function pets:max_pet/uncommon
execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"RARE"} run function pets:max_pet/rare
execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"EPIC"} run function pets:max_pet/epic
execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"LEGENDARY"} run function pets:max_pet/legendary
execute if data storage blue:pets PetExpGain.tag.Base.PetData{MaxRarity:"MYTHIC"} run function pets:max_pet/mythic
data modify storage blue:pets PetExpGain.tag.Base.PetData.Current.Level set value 100

tag @s add MenuEdit
tag @s add Specialcase
scoreboard players set $CurrentPetLevel Temp 100
setblock 29999978 1 29832 barrier
setblock 29999978 1 29832 birch_sign{Text1:'[{"nbt":"PetExpGain.tag.Base.RarityColor","storage":"blue:pets","italic":false,"interpret":true},{"text":"[Lvl ","color":"gray","italic":false},{"score":{"name":"$CurrentPetLevel","objective":"Temp"},"color":"gray","italic":false},{"text":"] ","color":"gray","italic":false},{"nbt":"PetExpGain.tag.Base.PetData.Name","storage":"blue:pets","italic":false}]'} replace
data modify storage blue:pets PetExpGain.tag.display.Name set from block 29999978 1 29832 Text1
setblock 29999978 1 29832 barrier
function pets:exp_system/calc_levelup_stats
data modify storage blue:pets EditPet set from storage blue:pets PetExpGain
data remove storage blue:pets PetExpGain
function items:edit_lore/begin/pet
#tellraw @p {"nbt":"EditPet","storage":"blue:pets"}
tag @s remove MenuEdit
tag @s remove Specialcase

setblock 29999977 1 29832 barrier
setblock 29999977 1 29832 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1}]}
data modify block 29999977 1 29832 Items[0] set from storage blue:pets EditPet
loot replace entity @s weapon.mainhand 1 mine 29999977 1 29832 stick{drop_contents:true}
setblock 29999977 1 29832 barrier
tellraw @s {"text":"Your pet has been set to level 100 and its maximum rarity!","color":"green"}
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 2 1
#------------------------------------------#