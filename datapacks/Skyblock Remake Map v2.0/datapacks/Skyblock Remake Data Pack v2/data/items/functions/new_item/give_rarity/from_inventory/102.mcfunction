summon item ~ ~ ~ {Tags:["NewInventoryItem","InventoryItem"],PickupDelay:0,Item:{id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b,CustomModelData:1}}}
data modify entity @e[tag=NewInventoryItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:102b}]
execute as @e[tag=NewInventoryItem,sort=nearest,limit=1] run function items:new_item/give_rarity/main
function collections:update_collections/find_correct_collection
tag @e remove NewInventoryItem
item replace entity @s armor.chest with air