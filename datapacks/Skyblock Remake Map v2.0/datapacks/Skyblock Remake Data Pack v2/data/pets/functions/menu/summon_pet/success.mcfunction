#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
tag @p add SpawningPet
execute as @p if entity @s[tag=PetSpawned] run function pets:despawn
execute as @p at @s as @e[tag=Pet] if score @s PlayerID = @p PlayerID run kill @s
execute as @p at @s as @e[tag=PetName] if score @s PlayerID = @p PlayerID run kill @s

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,Tags:["NewPet","Pet"],NoGravity:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],Rotation:[180f],Pose:{RightArm:[315f,233f,0f]}}
summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Small:1b,Invulnerable:1b,Tags:["NewPetName","PetName"],NoGravity:1b,CustomNameVisible:1b}

data modify storage blue:pets Items set from entity @s Items

execute as @p run function skyblock:multiplayer_storage/get
execute if score $PetSummon Temp matches 0 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[0]
execute if score $PetSummon Temp matches 1 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[1]
execute if score $PetSummon Temp matches 2 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[2]
execute if score $PetSummon Temp matches 3 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[3]
execute if score $PetSummon Temp matches 4 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[4]
execute if score $PetSummon Temp matches 5 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[5]
execute if score $PetSummon Temp matches 6 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[6]
execute if score $PetSummon Temp matches 7 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[7]
execute if score $PetSummon Temp matches 8 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[8]
execute if score $PetSummon Temp matches 9 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[9]
execute if score $PetSummon Temp matches 10 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[10]
execute if score $PetSummon Temp matches 11 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[11]
execute if score $PetSummon Temp matches 12 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[12]
execute if score $PetSummon Temp matches 13 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[13]
execute if score $PetSummon Temp matches 14 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[14]
execute if score $PetSummon Temp matches 15 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[15]
execute if score $PetSummon Temp matches 16 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[16]
execute if score $PetSummon Temp matches 17 run data modify entity @e[tag=NewPet,sort=nearest,limit=1] HandItems[0] set from storage blue:item PetMenu[17]

execute if score $PetSummon Temp matches 0 run data modify storage blue:multiplayer_storage data.Pets[0].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 1 run data modify storage blue:multiplayer_storage data.Pets[1].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 2 run data modify storage blue:multiplayer_storage data.Pets[2].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 3 run data modify storage blue:multiplayer_storage data.Pets[3].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 4 run data modify storage blue:multiplayer_storage data.Pets[4].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 5 run data modify storage blue:multiplayer_storage data.Pets[5].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 6 run data modify storage blue:multiplayer_storage data.Pets[6].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 7 run data modify storage blue:multiplayer_storage data.Pets[7].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 8 run data modify storage blue:multiplayer_storage data.Pets[8].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 9 run data modify storage blue:multiplayer_storage data.Pets[9].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 10 run data modify storage blue:multiplayer_storage data.Pets[10].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 11 run data modify storage blue:multiplayer_storage data.Pets[11].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 12 run data modify storage blue:multiplayer_storage data.Pets[12].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 13 run data modify storage blue:multiplayer_storage data.Pets[13].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 14 run data modify storage blue:multiplayer_storage data.Pets[14].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 15 run data modify storage blue:multiplayer_storage data.Pets[15].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 16 run data modify storage blue:multiplayer_storage data.Pets[16].tag.Base.PetSpawned set value 1b
execute if score $PetSummon Temp matches 17 run data modify storage blue:multiplayer_storage data.Pets[17].tag.Base.PetSpawned set value 1b
execute as @p run function skyblock:multiplayer_storage/save


execute as @p at @s as @e[tag=NewPet] run scoreboard players operation @s PlayerID = @p PlayerID
execute as @e[tag=NewPet] if score @s PlayerID = @p PlayerID store result score @p DisplayLevel run data get entity @s HandItems[0].tag.Base.PetData.Current.Level
tellraw @p [{"nbt":"HandItems[0].tag.Base.RarityColor","entity":"@e[tag=NewPet,sort=nearest,limit=1]","interpret":true},{"text":"You summoned your ","color":"green"},{"nbt":"HandItems[0].tag.Base.PetData.Name","entity":"@e[tag=NewPet,sort=nearest,limit=1]"},{"text":"!","color":"green"}]
execute as @p run function pets:custom_name/remove_team
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[{\"nbt\":\"HandItems[0].tag.Base.RarityColor\",\"entity\":\"@e[tag=NewPet,limit=1]\",\"interpret\":true},{\"text\":\"[\",\"italic\":false,\"color\":\"dark_gray\"},{\"text\":\"Lv\",\"italic\":false,\"color\":\"gray\"},{\"score\":{\"name\":\"@p\",\"objective\":\"DisplayLevel\"},\"color\":\"gray\",\"italic\":false},{\"text\":\"] \",\"italic\":false,\"color\":\"dark_gray\"},{\"selector\":\"@p\",\"italic\":false},{\"text\":\"'s \"},{\"nbt\":\"HandItems[0].tag.Base.PetData.Name\",\"entity\":\"@e[tag=NewPet,limit=1]\",\"italic\":false}]"} replace
tag @e[tag=NewPet,sort=nearest,limit=1] remove NewPet
execute in minecraft:overworld as @e[tag=NewPetName] run data modify entity @s CustomName set from block 29999978 1 29832 Text1
execute as @e[tag=NewPetName] at @s run scoreboard players operation @s PlayerID = @e[tag=Pet,sort=nearest,limit=1] PlayerID
tag @e[tag=NewPetName,sort=nearest,limit=1] remove NewPetName
function menu:close_menu
execute as @p run function pets:custom_name/rejoin_team
tag @p add PetSpawned
tag @p remove SpawningPet
execute as @p run function stats:calculate/stats
execute as @p run function pets:abilities/pet_tag_add
#------------------------------------------#