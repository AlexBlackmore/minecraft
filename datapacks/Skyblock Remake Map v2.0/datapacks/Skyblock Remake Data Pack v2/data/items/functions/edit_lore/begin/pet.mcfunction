#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------RESET SCORES & TAGS------------#
execute in minecraft:overworld run setblock 29999977 1 29832 air
execute in minecraft:overworld run setblock 29999977 1 29832 shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{}}]}
execute if entity @s[tag=!MenuEdit] run data modify storage blue:lore_builder InventoryStorage set from entity @s SelectedItem
execute if entity @s[tag=MenuEdit] run data modify storage blue:lore_builder InventoryStorage set from storage blue:pets EditPet
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:lore_builder InventoryStorage.id
data modify storage blue:lore_builder ItemStorage set from storage blue:lore_builder InventoryStorage.tag
data modify storage blue:lore_builder LoreStorage set from storage blue:lore_builder InventoryStorage.tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
execute if entity @s[tag=MenuEdit] run data modify storage blue:pets EditPet.id set from storage blue:lore_builder TypeStorage
execute if entity @s[tag=MenuEdit] run data modify storage blue:pets EditPet.tag set from storage blue:lore_builder ItemStorage
execute if entity @s[tag=MenuEdit] run data modify storage blue:pets EditPet.tag.display.Lore set from storage blue:lore_builder NewLore

execute if entity @s[tag=!MenuEdit] in minecraft:overworld run data modify block 29999977 1 29832 Items[0].id set from storage blue:lore_builder TypeStorage
execute if entity @s[tag=!MenuEdit] in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag set from storage blue:lore_builder ItemStorage
execute if entity @s[tag=!MenuEdit] in minecraft:overworld run data modify block 29999977 1 29832 Items[0].tag.display.Lore set from storage blue:lore_builder NewLore
execute if entity @s[tag=!MenuEdit] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999977 1 29832 minecraft:diamond_pickaxe{drop_contents:true}
#------------------------------------------#