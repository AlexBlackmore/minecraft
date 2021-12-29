function reforges:store_stats
data modify storage blue:reforge Item.tag.Base.Reforge set value "Fast"
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add AtkSpd ReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run scoreboard players add AtkSpd BReforgeStats 10
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add AtkSpd ReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run scoreboard players add AtkSpd BReforgeStats 20
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd ReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run scoreboard players add AtkSpd BReforgeStats 30
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd ReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run scoreboard players add AtkSpd BReforgeStats 40
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd ReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run scoreboard players add AtkSpd BReforgeStats 50
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd ReforgeStats 60
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run scoreboard players add AtkSpd BReforgeStats 60
function reforges:apply_stats