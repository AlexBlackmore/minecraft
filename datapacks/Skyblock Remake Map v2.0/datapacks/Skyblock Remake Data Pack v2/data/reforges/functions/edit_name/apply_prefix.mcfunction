execute if entity @s[tag=!ReforgeStone] run function reforges:rolls/rolls

setblock ~ 200 ~ air

execute if data storage blue:reforge Item.tag.Base{Rarity:"COMMON"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"white","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"white"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"UNCOMMON"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"green","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"green"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"RARE"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"blue","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"blue"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"EPIC"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"dark_purple","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"dark_purple"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"LEGENDARY"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"gold","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"gold"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"MYTHIC"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"light_purple","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"light_purple"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"SUPREME"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"dark_red","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"dark_red"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"SPECIAL"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"red","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"red"}]'} replace
execute if data storage blue:reforge Item.tag.Base{Rarity:"VERY SPECIAL"} run setblock ~ 200 ~ minecraft:acacia_sign{Text1:'[{"nbt":"Item.tag.Base.Reforge","storage":"blue:reforge","interpret":false,"color":"red","italic":false},{"text":" "},{"nbt":"Item.tag.Base.BaseName","interpret":true,"storage":"blue:reforge","color":"red"}]'} replace

data modify storage blue:reforge Item.tag.display.Name set from block ~ 200 ~ Text1
data modify storage blue:reforge Tellraw.Name set from storage blue:reforge Item.tag.display.Name
execute if entity @s[tag=!ReforgeStone] run tellraw @p ["",{"text":"You reforged your ","color":"green"},{"nbt":"Tellraw.PreName","storage":"blue:reforge","interpret":true},{"text":" into a ","color":"green"},{"nbt":"Tellraw.Name","storage":"blue:reforge","interpret":true},{"text":"!","color":"green"}]

execute if entity @s[tag=!ReforgeStone] run data modify entity @s Items[{Slot:13b}] set from storage blue:reforge Item
setblock ~ 200 ~ air

