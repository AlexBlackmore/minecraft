#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------------------------------#
scoreboard players reset $PetSummon Temp
execute as @p run function skyblock:multiplayer_storage/get

execute unless data entity @s Items[{Slot:0b}] if data storage blue:pets Items[{Slot:0b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[0].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 0
execute unless data entity @s Items[{Slot:1b}] if data storage blue:pets Items[{Slot:1b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[1].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 1
execute unless data entity @s Items[{Slot:2b}] if data storage blue:pets Items[{Slot:2b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[2].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 2
execute unless data entity @s Items[{Slot:3b}] if data storage blue:pets Items[{Slot:3b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[3].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 3
execute unless data entity @s Items[{Slot:4b}] if data storage blue:pets Items[{Slot:4b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[4].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 4
execute unless data entity @s Items[{Slot:5b}] if data storage blue:pets Items[{Slot:5b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[5].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 5
execute unless data entity @s Items[{Slot:6b}] if data storage blue:pets Items[{Slot:6b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[6].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 6
execute unless data entity @s Items[{Slot:7b}] if data storage blue:pets Items[{Slot:7b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[7].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 7
execute unless data entity @s Items[{Slot:8b}] if data storage blue:pets Items[{Slot:8b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[8].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 8
execute unless data entity @s Items[{Slot:9b}] if data storage blue:pets Items[{Slot:9b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[9].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 9
execute unless data entity @s Items[{Slot:10b}] if data storage blue:pets Items[{Slot:10b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[10].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 10
execute unless data entity @s Items[{Slot:11b}] if data storage blue:pets Items[{Slot:11b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[11].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 11
execute unless data entity @s Items[{Slot:12b}] if data storage blue:pets Items[{Slot:12b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[12].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 12
execute unless data entity @s Items[{Slot:13b}] if data storage blue:pets Items[{Slot:13b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[13].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 13
execute unless data entity @s Items[{Slot:14b}] if data storage blue:pets Items[{Slot:14b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[14].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 14
execute unless data entity @s Items[{Slot:15b}] if data storage blue:pets Items[{Slot:15b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[15].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 15
execute unless data entity @s Items[{Slot:16b}] if data storage blue:pets Items[{Slot:16b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[16].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 16
execute unless data entity @s Items[{Slot:17b}] if data storage blue:pets Items[{Slot:17b}].tag.Base.PetData unless data storage blue:multiplayer_storage data.Pets[17].tag.Base.PetSpawned as @p at @s run scoreboard players set $PetSummon Temp 17

execute unless data entity @s Items[{Slot:0b}] if data storage blue:pets Items[{Slot:0b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[0].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:1b}] if data storage blue:pets Items[{Slot:1b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[1].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:2b}] if data storage blue:pets Items[{Slot:2b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[2].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:3b}] if data storage blue:pets Items[{Slot:3b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[3].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:4b}] if data storage blue:pets Items[{Slot:4b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[4].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:5b}] if data storage blue:pets Items[{Slot:5b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[5].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:6b}] if data storage blue:pets Items[{Slot:6b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[6].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:7b}] if data storage blue:pets Items[{Slot:7b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[7].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:8b}] if data storage blue:pets Items[{Slot:8b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[8].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:9b}] if data storage blue:pets Items[{Slot:9b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[9].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:10b}] if data storage blue:pets Items[{Slot:10b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[10].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:11b}] if data storage blue:pets Items[{Slot:11b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[11].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:12b}] if data storage blue:pets Items[{Slot:12b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[12].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:13b}] if data storage blue:pets Items[{Slot:13b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[13].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:14b}] if data storage blue:pets Items[{Slot:14b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[14].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:15b}] if data storage blue:pets Items[{Slot:15b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[15].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:16b}] if data storage blue:pets Items[{Slot:16b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[16].tag.Base.PetSpawned as @p at @s run function pets:despawn
execute unless data entity @s Items[{Slot:17b}] if data storage blue:pets Items[{Slot:17b}].tag.Base.PetData if data storage blue:multiplayer_storage data.Pets[17].tag.Base.PetSpawned as @p at @s run function pets:despawn

execute if score $PetSummon Temp matches 0.. run function pets:menu/summon_pet/success
#------------------------------------------#