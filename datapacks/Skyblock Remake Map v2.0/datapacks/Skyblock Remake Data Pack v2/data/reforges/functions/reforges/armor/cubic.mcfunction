function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Cubic"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health BReforgeStats 25
function reforges:apply_stats