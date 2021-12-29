function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Blessed"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed ReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed BReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed ReforgeStats 13
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed BReforgeStats 13
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed ReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed BReforgeStats 16
function reforges:apply_stats