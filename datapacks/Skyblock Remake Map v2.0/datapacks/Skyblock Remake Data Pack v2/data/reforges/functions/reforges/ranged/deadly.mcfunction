function reforges:store_stats

data modify storage blue:reforge Item.tag.Base.Reforge set value "Deadly"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritChan BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan ReforgeStats 13
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritChan BReforgeStats 13
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan ReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritChan BReforgeStats 16
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan ReforgeStats 19
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritChan BReforgeStats 19
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan ReforgeStats 22
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritChan BReforgeStats 22
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritChan BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 18
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 18
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 32
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 32
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 70
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 70
function reforges:apply_stats