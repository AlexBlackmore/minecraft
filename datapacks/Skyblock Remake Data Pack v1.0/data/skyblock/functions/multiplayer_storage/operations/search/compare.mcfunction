#if search.searchfor equals search.list[0].id or there is no more element in the list, stop searching
data modify storage blue:multiplayer_storage search.compare set from storage blue:multiplayer_storage search.searchfor
execute store success score notFinished MPStorage run data modify storage blue:multiplayer_storage search.compare set from storage blue:multiplayer_storage search.list[0].id
execute if score notFinished MPStorage matches 1 run function skyblock:multiplayer_storage/operations/search/next_element
