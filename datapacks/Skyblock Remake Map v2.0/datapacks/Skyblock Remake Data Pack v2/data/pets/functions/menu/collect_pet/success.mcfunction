#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
summon item ~ ~ ~ {Item:{id:"minecraft:scute",Count:1b,tag:{CustomModelData:1}},PickupDelay:1,Tags:["PetItemCollectInit"]}

data modify storage blue:item PetMenu set from storage blue:multiplayer_storage data.Pets

data modify storage blue:item PetMenu set from storage blue:multiplayer_storage data.Pets

tag @p add SpawningPet
execute if score $PetCollect Temp matches 0 if data storage blue:multiplayer_storage data.Pets[0].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 1 if data storage blue:multiplayer_storage data.Pets[1].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 2 if data storage blue:multiplayer_storage data.Pets[2].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 3 if data storage blue:multiplayer_storage data.Pets[3].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 4 if data storage blue:multiplayer_storage data.Pets[4].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 5 if data storage blue:multiplayer_storage data.Pets[5].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 6 if data storage blue:multiplayer_storage data.Pets[6].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 7 if data storage blue:multiplayer_storage data.Pets[7].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 8 if data storage blue:multiplayer_storage data.Pets[8].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 9 if data storage blue:multiplayer_storage data.Pets[9].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 10 if data storage blue:multiplayer_storage data.Pets[10].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 11 if data storage blue:multiplayer_storage data.Pets[11].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 12 if data storage blue:multiplayer_storage data.Pets[12].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 13 if data storage blue:multiplayer_storage data.Pets[13].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 14 if data storage blue:multiplayer_storage data.Pets[14].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 15 if data storage blue:multiplayer_storage data.Pets[15].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 16 if data storage blue:multiplayer_storage data.Pets[16].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute if score $PetCollect Temp matches 17 if data storage blue:multiplayer_storage data.Pets[17].tag.Base.PetSpawned as @p at @s run function pets:despawn

execute if score $PetCollect Temp matches 0 run data modify storage blue:item PetMenu[0].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 1 run data modify storage blue:item PetMenu[1].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 2 run data modify storage blue:item PetMenu[2].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 3 run data modify storage blue:item PetMenu[3].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 4 run data modify storage blue:item PetMenu[4].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 5 run data modify storage blue:item PetMenu[5].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 6 run data modify storage blue:item PetMenu[6].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 7 run data modify storage blue:item PetMenu[7].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 8 run data modify storage blue:item PetMenu[8].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 9 run data modify storage blue:item PetMenu[9].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 10 run data modify storage blue:item PetMenu[10].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 12 run data modify storage blue:item PetMenu[12].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 13 run data modify storage blue:item PetMenu[13].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 14 run data modify storage blue:item PetMenu[14].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 15 run data modify storage blue:item PetMenu[15].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 16 run data modify storage blue:item PetMenu[16].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']
execute if score $PetCollect Temp matches 17 run data modify storage blue:item PetMenu[17].tag.Description set value ['[{"text":"Right-click to add this pet to","color":"yellow","italic":false}]','[{"text":"your pet menu!","color":"yellow","italic":false}]','[{"text":""}]']

tag @s add MenuEdit
tag @s add Specialcase

execute if score $PetCollect Temp matches 0 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[0]
execute if score $PetCollect Temp matches 1 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[1]
execute if score $PetCollect Temp matches 2 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[2]
execute if score $PetCollect Temp matches 3 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[3]
execute if score $PetCollect Temp matches 4 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[4]
execute if score $PetCollect Temp matches 5 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[5]
execute if score $PetCollect Temp matches 6 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[6]
execute if score $PetCollect Temp matches 7 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[7]
execute if score $PetCollect Temp matches 8 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[8]
execute if score $PetCollect Temp matches 9 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[9]
execute if score $PetCollect Temp matches 10 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[10]
execute if score $PetCollect Temp matches 11 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[11]
execute if score $PetCollect Temp matches 12 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[12]
execute if score $PetCollect Temp matches 13 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[13]
execute if score $PetCollect Temp matches 14 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[14]
execute if score $PetCollect Temp matches 15 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[15]
execute if score $PetCollect Temp matches 16 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[16]
execute if score $PetCollect Temp matches 17 run data modify storage blue:pets EditPet set from storage blue:item PetMenu[17]

function items:edit_lore/begin/pet

execute if score $PetCollect Temp matches 0 run data modify storage blue:item PetMenu[0] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 1 run data modify storage blue:item PetMenu[1] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 2 run data modify storage blue:item PetMenu[2] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 3 run data modify storage blue:item PetMenu[3] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 4 run data modify storage blue:item PetMenu[4] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 5 run data modify storage blue:item PetMenu[5] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 6 run data modify storage blue:item PetMenu[6] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 7 run data modify storage blue:item PetMenu[7] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 8 run data modify storage blue:item PetMenu[8] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 9 run data modify storage blue:item PetMenu[9] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 10 run data modify storage blue:item PetMenu[10] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 11 run data modify storage blue:item PetMenu[11] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 12 run data modify storage blue:item PetMenu[12] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 13 run data modify storage blue:item PetMenu[13] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 14 run data modify storage blue:item PetMenu[14] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 15 run data modify storage blue:item PetMenu[15] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 16 run data modify storage blue:item PetMenu[16] set from storage blue:pets EditPet
execute if score $PetCollect Temp matches 17 run data modify storage blue:item PetMenu[17] set from storage blue:pets EditPet

execute if score $PetCollect Temp matches 0 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[0]
execute if score $PetCollect Temp matches 1 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[1]
execute if score $PetCollect Temp matches 2 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[2]
execute if score $PetCollect Temp matches 3 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[3]
execute if score $PetCollect Temp matches 4 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[4]
execute if score $PetCollect Temp matches 5 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[5]
execute if score $PetCollect Temp matches 6 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[6]
execute if score $PetCollect Temp matches 7 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[7]
execute if score $PetCollect Temp matches 8 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[8]
execute if score $PetCollect Temp matches 9 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[9]
execute if score $PetCollect Temp matches 10 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[10]
execute if score $PetCollect Temp matches 11 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[11]
execute if score $PetCollect Temp matches 12 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[12]
execute if score $PetCollect Temp matches 13 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[13]
execute if score $PetCollect Temp matches 14 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[14]
execute if score $PetCollect Temp matches 15 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[15]
execute if score $PetCollect Temp matches 16 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[16]
execute if score $PetCollect Temp matches 17 run data modify entity @e[tag=PetItemCollectInit,sort=nearest,limit=1] Item set from storage blue:item PetMenu[17]

execute if score $PetCollect Temp matches 0 run data remove storage blue:multiplayer_storage data.Pets[0]
execute if score $PetCollect Temp matches 1 run data remove storage blue:multiplayer_storage data.Pets[1]
execute if score $PetCollect Temp matches 2 run data remove storage blue:multiplayer_storage data.Pets[2]
execute if score $PetCollect Temp matches 3 run data remove storage blue:multiplayer_storage data.Pets[3]
execute if score $PetCollect Temp matches 4 run data remove storage blue:multiplayer_storage data.Pets[4]
execute if score $PetCollect Temp matches 5 run data remove storage blue:multiplayer_storage data.Pets[5]
execute if score $PetCollect Temp matches 6 run data remove storage blue:multiplayer_storage data.Pets[6]
execute if score $PetCollect Temp matches 7 run data remove storage blue:multiplayer_storage data.Pets[7]
execute if score $PetCollect Temp matches 8 run data remove storage blue:multiplayer_storage data.Pets[8]
execute if score $PetCollect Temp matches 9 run data remove storage blue:multiplayer_storage data.Pets[9]
execute if score $PetCollect Temp matches 10 run data remove storage blue:multiplayer_storage data.Pets[10]
execute if score $PetCollect Temp matches 11 run data remove storage blue:multiplayer_storage data.Pets[11]
execute if score $PetCollect Temp matches 12 run data remove storage blue:multiplayer_storage data.Pets[12]
execute if score $PetCollect Temp matches 13 run data remove storage blue:multiplayer_storage data.Pets[13]
execute if score $PetCollect Temp matches 14 run data remove storage blue:multiplayer_storage data.Pets[14]
execute if score $PetCollect Temp matches 15 run data remove storage blue:multiplayer_storage data.Pets[15]
execute if score $PetCollect Temp matches 16 run data remove storage blue:multiplayer_storage data.Pets[16]
execute if score $PetCollect Temp matches 17 run data remove storage blue:multiplayer_storage data.Pets[17]

kill @e[tag=PetItemCollectInit,nbt={Item:{id:"minecraft:scute",tag:{CustomModelData:1}}}]

execute if entity @e[tag=PetItemCollectInit] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 1 1
tag @e remove PetItemCollectInit
tag @s remove ConvertPetItem
tag @s remove SpawningPet
#------------------------------------------#