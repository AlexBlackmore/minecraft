function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Vivid"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Health BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Health BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Health BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Health BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Health BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Health BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed BReforgeStats 6
function reforges:apply_stats