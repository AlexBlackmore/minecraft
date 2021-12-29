
scoreboard players set in RandMath 101
scoreboard players set in1 RandMath 102
function skyblock:random/range_lcg

execute unless data storage blue:reforge Item.tag.Base{Reforge:"Epic"} if score out RandMath matches 101 run function reforges:reforges/epic
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Fair"} if score out RandMath matches 102 run function reforges:reforges/fair
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Fast"} if score out RandMath matches 103 run function reforges:reforges/fast
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Gentle"} if score out RandMath matches 104 run function reforges:reforges/gentle
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Heroic"} if score out RandMath matches 105 run function reforges:reforges/heroic
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Legendary"} if score out RandMath matches 106 run function reforges:reforges/legendary
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Odd"} if score out RandMath matches 107 run function reforges:reforges/odd
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Sharp"} if score out RandMath matches 108 run function reforges:reforges/sharp
execute unless data storage blue:reforge Item.tag.Base{Reforge:"Spicy"} if score out RandMath matches 109 run function reforges:reforges/spicy

