function reforges:store_stats

data modify storage blue:reforge Item.tag.Base.Reforge set value "Hasty"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 60
function reforges:apply_stats