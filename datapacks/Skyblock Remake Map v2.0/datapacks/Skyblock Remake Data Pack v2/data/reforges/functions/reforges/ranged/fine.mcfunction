function reforges:store_stats

data modify storage blue:reforge Item.tag.Base.Reforge set value "Fine"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 18
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 18
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 9
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 20
function reforges:apply_stats