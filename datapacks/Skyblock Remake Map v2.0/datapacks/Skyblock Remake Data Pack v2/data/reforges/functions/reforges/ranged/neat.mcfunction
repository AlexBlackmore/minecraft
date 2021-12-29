function reforges:store_stats

data modify storage blue:reforge Item.tag.Base.Reforge set value "Neat"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 17
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 17
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 8
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 14
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel BReforgeStats 30
function reforges:apply_stats