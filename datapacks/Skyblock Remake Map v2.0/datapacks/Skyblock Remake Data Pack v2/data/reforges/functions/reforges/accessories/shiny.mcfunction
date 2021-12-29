function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Shiny"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel BReforgeStats 5
function reforges:apply_stats