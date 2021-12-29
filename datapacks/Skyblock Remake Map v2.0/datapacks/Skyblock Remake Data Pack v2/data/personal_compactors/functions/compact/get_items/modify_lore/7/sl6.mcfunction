execute unless data entity @s Items[{Slot:15b}].tag.BaseName run data modify entity @s Items[{Slot:15b}].tag.BaseName set from entity @s Items[{Slot:15b}].tag.display.Name
execute unless data entity @s Items[{Slot:15b}].tag.BaseLore run data modify entity @s Items[{Slot:15b}].tag.BaseLore set from entity @s Items[{Slot:15b}].tag.display.Lore
data modify entity @s Items[{Slot:15b}].tag.display.Name set value '[{"text":"Auto-Craft Slot #6","color":"green","italic":false}]'
data modify storage skyblock:personal_compactors temp_name set from entity @s Items[{Slot:15b}].tag.BaseName
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:'[{"text":"Item: ","color":"gray","italic":false},{"nbt":"temp_name","storage":"skyblock:personal_compactors","interpret":true}]'}
data modify storage skyblock:personal_compactors lore_builder set value ['{"text":""}','{"text":"This item will automatically be","color":"gray","italic":false}','{"text":"crafted from ingredients in your","color":"gray","italic":false}','{"text":"inventory.","color":"gray","italic":false}']
execute in minecraft:overworld run data modify storage skyblock:personal_compactors lore_builder prepend from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air
data modify entity @s Items[{Slot:15b}].tag.display.Lore set from storage skyblock:personal_compactors lore_builder
data modify entity @s Items[{Slot:15b}].tag.PCLoreMod set value 1b