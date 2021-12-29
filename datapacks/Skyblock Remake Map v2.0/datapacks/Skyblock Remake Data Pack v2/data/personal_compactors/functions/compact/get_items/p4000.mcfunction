data remove storage skyblock:personal_compactors slot
data modify storage skyblock:personal_compactors slot set from entity @s Inventory[{id:"minecraft:rabbit_stew",tag:{Base:{Type:"ACCESSORY",AccessoryFamily:"Compactor"}}}].tag.CompactItems[]
execute store result score slot pcompact.strlgth run data get storage skyblock:personal_compactors slot
execute if score slot pcompact.strlgth matches 10.. run function personal_compactors:compact/get_items/get_string_length