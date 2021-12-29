function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Treacherous"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 30
function reforges:apply_stats