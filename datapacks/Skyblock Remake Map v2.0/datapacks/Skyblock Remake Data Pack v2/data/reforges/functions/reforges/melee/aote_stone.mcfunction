function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "aote_stone"
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Damage ReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Damage BReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Damage ReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Damage BReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 165
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 165
function reforges:apply_stats