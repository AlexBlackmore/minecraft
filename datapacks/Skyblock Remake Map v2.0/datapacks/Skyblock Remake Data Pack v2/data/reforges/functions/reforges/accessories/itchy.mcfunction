function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Itchy"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add CritDmg BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add CritDmg BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add CritDmg BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add CritDmg BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add CritDmg BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg ReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add CritDmg BReforgeStats 15
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd BReforgeStats 1
function reforges:apply_stats