function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Submerged"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add SCChance BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add SCChance BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add SCChance BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add SCChance BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance ReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add SCChance BReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add SCChance BReforgeStats 10
function reforges:apply_stats