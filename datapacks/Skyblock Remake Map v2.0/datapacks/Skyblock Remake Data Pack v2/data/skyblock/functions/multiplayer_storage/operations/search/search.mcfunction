#input:
#search.list - the list to search through
#search.searchfor - the id to search for
#output:
#execute if score not_found MPStorage matches 1 - whether the element was not found
#search.list - the input list with the element with a matching id moved to the 0th place
#if the element doesn't exist, an empty new one with the id searched for is created

function skyblock:multiplayer_storage/operations/search/compare

execute unless data storage blue:multiplayer_storage search.list[] run data modify storage blue:multiplayer_storage search.list set value [{}]
execute store success score not_found MPStorage run data modify storage blue:multiplayer_storage search.list[0].id set from storage blue:multiplayer_storage search.searchfor

data modify storage blue:multiplayer_storage search.list insert 1 from storage blue:multiplayer_storage search.list2[]
data remove storage blue:multiplayer_storage search.list2
