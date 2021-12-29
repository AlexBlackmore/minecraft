#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run setblock 29999977 1 29832 air
execute in minecraft:overworld run setblock 29999977 1 29832 shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{}},{Slot:1b,id:"minecraft:wheat_seeds",Count:1b,tag:{}},{Slot:2b,id:"minecraft:wheat_seeds",Count:1b,tag:{}},{Slot:3b,id:"minecraft:wheat_seeds",Count:1b,tag:{}}]}
data modify storage blue:lore_builder InventoryStorage set from entity @s Inventory
#HELMET
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:lore_builder InventoryStorage[{Slot:103b}].id
data modify storage blue:lore_builder ItemStorage set from storage blue:lore_builder InventoryStorage[{Slot:103b}].tag
data modify storage blue:lore_builder LoreStorage set from storage blue:lore_builder InventoryStorage[{Slot:103b}].tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[3].id set from storage blue:lore_builder TypeStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[3].tag set from storage blue:lore_builder ItemStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[3].tag.display.Lore set from storage blue:lore_builder NewLore
#------------------------------------------#
#CHESTPLATE
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:lore_builder InventoryStorage[{Slot:102b}].id
data modify storage blue:lore_builder ItemStorage set from storage blue:lore_builder InventoryStorage[{Slot:102b}].tag
data modify storage blue:lore_builder LoreStorage set from storage blue:lore_builder InventoryStorage[{Slot:102b}].tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[2].id set from storage blue:lore_builder TypeStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[2].tag set from storage blue:lore_builder ItemStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[2].tag.display.Lore set from storage blue:lore_builder NewLore
#------------------------------------------#
#LEGGINGS
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:lore_builder InventoryStorage[{Slot:101b}].id
data modify storage blue:lore_builder ItemStorage set from storage blue:lore_builder InventoryStorage[{Slot:101b}].tag
data modify storage blue:lore_builder LoreStorage set from storage blue:lore_builder InventoryStorage[{Slot:101b}].tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[1].id set from storage blue:lore_builder TypeStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[1].tag set from storage blue:lore_builder ItemStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[1].tag.display.Lore set from storage blue:lore_builder NewLore
#------------------------------------------#
#BOOTS
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:lore_builder InventoryStorage[{Slot:100b}].id
data modify storage blue:lore_builder ItemStorage set from storage blue:lore_builder InventoryStorage[{Slot:100b}].tag
data modify storage blue:lore_builder LoreStorage set from storage blue:lore_builder InventoryStorage[{Slot:100b}].tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].id set from storage blue:lore_builder TypeStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag set from storage blue:lore_builder ItemStorage
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.display.Lore set from storage blue:lore_builder NewLore
execute in minecraft:overworld run loot replace entity @s armor.feet 4 mine 29999977 1 29832 minecraft:diamond_pickaxe{drop_contents:true}
#------------------------------------------#