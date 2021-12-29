function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Titanic"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Defense BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Defense BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Defense BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Defense BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health ReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health BReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense ReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Defense BReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health BReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Defense BReforgeStats 50
function reforges:apply_stats