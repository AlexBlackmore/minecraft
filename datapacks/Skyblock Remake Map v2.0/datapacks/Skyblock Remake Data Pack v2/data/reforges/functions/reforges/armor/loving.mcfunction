function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Loving"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel ReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel BReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel ReforgeStats 80
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel BReforgeStats 80
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel ReforgeStats 100
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel BReforgeStats 100
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health ReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health BReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense ReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense BReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel ReforgeStats 120
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel BReforgeStats 120
function reforges:apply_stats