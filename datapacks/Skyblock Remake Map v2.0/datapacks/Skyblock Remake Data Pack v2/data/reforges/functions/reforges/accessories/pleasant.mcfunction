function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Pleasant"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense BReforgeStats 20
function reforges:apply_stats