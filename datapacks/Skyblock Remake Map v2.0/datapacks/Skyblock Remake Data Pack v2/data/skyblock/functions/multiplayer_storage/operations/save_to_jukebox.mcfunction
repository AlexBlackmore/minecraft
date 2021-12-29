setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:jukebox",Count:1b}} keep

data modify storage blue:multiplayer_storage search.list[0].data set from storage blue:multiplayer_storage data
data remove storage blue:multiplayer_storage data

execute unless data storage blue:multiplayer_storage search.list[0].data run data remove storage blue:multiplayer_storage search.list[0]
execute unless data storage blue:multiplayer_storage search.list[] run setblock ~ ~ ~ air
data modify block ~ ~ ~ RecordItem.tag.entities set from storage blue:multiplayer_storage search.list
data remove storage blue:multiplayer_storage search