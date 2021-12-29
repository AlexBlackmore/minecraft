function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Salty"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance BReforgeStats 7
function reforges:apply_stats