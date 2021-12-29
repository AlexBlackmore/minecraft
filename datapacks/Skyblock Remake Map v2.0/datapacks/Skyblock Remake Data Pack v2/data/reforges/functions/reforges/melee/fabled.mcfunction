function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Fabled"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 35
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 25
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 32
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 32
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 75
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 75
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 50
function reforges:apply_stats