function reforges:store_stats
 data modify storage blue:reforge Item.tag.Base.Reforge set value "Warped"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Strength BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add AtkSpd ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add AtkSpd BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Strength BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add AtkSpd ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add AtkSpd BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed ReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add Speed BReforgeStats 1
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Strength BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd ReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd BReforgeStats 4
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add Speed BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Strength BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd ReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd BReforgeStats 5
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed ReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add Speed BReforgeStats 2
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Strength BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd ReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd BReforgeStats 6
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add Speed BReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength ReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Strength BReforgeStats 12
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd ReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd BReforgeStats 7
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed ReforgeStats 3
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add Speed BReforgeStats 3
function reforges:apply_stats