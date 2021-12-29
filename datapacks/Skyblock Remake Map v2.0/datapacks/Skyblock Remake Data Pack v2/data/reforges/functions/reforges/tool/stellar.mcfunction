function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Stellar"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense ReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense BReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 20
function reforges:apply_stats