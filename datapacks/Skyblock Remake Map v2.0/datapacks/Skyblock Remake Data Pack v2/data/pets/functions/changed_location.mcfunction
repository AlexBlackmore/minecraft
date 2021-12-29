#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
function skyblock:multiplayer_storage/get
data modify storage blue:pets LocationChanged set from storage blue:multiplayer_storage data.Pets[{tag:{Base:{PetSpawned:1b}}}]
execute as @e[tag=Pet] at @s as @e[tag=PetName] if score @s PlayerID = @e[tag=Pet,sort=nearest,limit=1] PlayerID run kill @s
execute as @e[tag=Pet] if score @s PlayerID = @p PlayerID run kill @s

summon armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,Tags:["NewPet","Pet"],NoGravity:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],Rotation:[180f],Pose:{RightArm:[315f,233f,0f]}}
execute at @s as @e[tag=NewPet] run data modify entity @s HandItems[0] set from storage blue:pets LocationChanged
execute at @s as @e[tag=NewPet] run scoreboard players operation @s PlayerID = @p PlayerID
execute as @e[tag=NewPet] if score @s PlayerID = @p PlayerID store result score @p DisplayLevel run data get entity @s HandItems[0].tag.Base.PetData.Current.Level
function pets:custom_name/remove_team
execute as @e[tag=NewPet] in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:'[{"nbt":"HandItems[0].tag.Base.RarityColor","entity":"@e[tag=NewPet,limit=1]","interpret":true},{"text":"[","italic":false,"color":"dark_gray"},{"text":"Lv","italic":false,"color":"gray"},{"score":{"name":"@p","objective":"DisplayLevel"},"color":"gray","italic":false},{"text":"] ","italic":false,"color":"dark_gray"},{"selector":"@p","italic":false},{"text":"\'s "},{"nbt":"HandItems[0].tag.Base.PetData.Name","entity":"@e[tag=NewPet,limit=1]","italic":false}]'} replace
tag @e[tag=NewPet] remove NewPet

summon armor_stand ^ ^ ^ {Invisible:1b,Small:1b,Invulnerable:1b,Tags:["NewPetName","PetName"],NoGravity:1b,CustomNameVisible:1b}
execute in minecraft:overworld as @e[tag=NewPetName] run data modify entity @s CustomName set from block 29999978 1 29832 Text1
execute as @e[tag=NewPetName] at @s run scoreboard players operation @s PlayerID = @e[tag=Pet,sort=nearest,limit=1] PlayerID
tag @e[tag=NewPetName] remove NewPetName

function pets:custom_name/rejoin_team
function stats:calculate/stats
function pets:abilities/pet_tag_add
tag @p add PetSpawned
function skyblock:multiplayer_storage/save
#------------------------------------------#
