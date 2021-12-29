function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Zealous"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Intel BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Intel BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Intel BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Intel BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Intel BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Intel BReforgeStats 7
function reforges:apply_stats