function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Unpleasant"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 3
function reforges:apply_stats