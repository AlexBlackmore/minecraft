execute store result score z MPStorage run data get storage blue:multiplayer_storage UUID[0]

#better performance than using a scale with "data get"
#65536=2^32/(16*16*256)
#-32768..32767
execute store result score x MPStorage run scoreboard players operation z MPStorage /= 65536 MPStorage
execute store result storage blue:multiplayer_storage Pos.TileX int 1 run scoreboard players operation x MPStorage %= 16 MPStorage
#-2048..2047
execute store result score y MPStorage run scoreboard players operation z MPStorage /= 16 MPStorage
execute store result storage blue:multiplayer_storage Pos.TileZ int 1 run scoreboard players operation z MPStorage %= 16 MPStorage
#-128..127
scoreboard players operation y MPStorage /= 16 MPStorage
execute store result storage blue:multiplayer_storage Pos.TileY int 1 run scoreboard players add y MPStorage 128

data modify entity @s {} merge from storage blue:multiplayer_storage Pos
data remove storage blue:multiplayer_storage Pos


#RecordItem.tag.entities: list of stored entities
#searches for the entry that has a matching UUID
data modify storage blue:multiplayer_storage search.searchfor set from storage blue:multiplayer_storage UUID
execute positioned as @s in skyblock:multiplayer_storage run data modify storage blue:multiplayer_storage search.list set from block ~ ~ ~ RecordItem.tag.entities

function skyblock:multiplayer_storage/operations/search/search

data remove storage blue:multiplayer_storage data
data modify storage blue:multiplayer_storage data set from storage blue:multiplayer_storage search.list[0].data
data remove storage blue:multiplayer_storage search.list[0].data

data remove storage blue:multiplayer_storage UUID
