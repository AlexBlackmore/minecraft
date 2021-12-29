data remove storage blue:reforge Item
data modify storage blue:reforge Item set from entity @s Items[{Slot:13b}]

execute at @s unless data storage blue:reforge Item.tag.Base.FirstReforge run data modify storage blue:reforge Item.tag.Base.BaseName set from storage blue:reforge Item.tag.display.Name
execute at @s run function reforges:edit_name/apply_prefix

scoreboard players operation @p AddCoins = $ReforgeCost Temp
scoreboard players operation @p AddCoins *= c-1 Constant
playsound block.anvil.use master @p ~ ~ ~ 1 1 1
scoreboard players set @p ReforgeCooldown 6