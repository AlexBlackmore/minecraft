function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Necrotic"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel BReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel ReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel BReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel ReforgeStats 90
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel BReforgeStats 90
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel ReforgeStats 120
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel BReforgeStats 120
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel ReforgeStats 150
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel BReforgeStats 150
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel ReforgeStats 200
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel BReforgeStats 200
function reforges:apply_stats