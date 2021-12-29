#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
execute in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Inventory[{Slot:8b}]
execute in minecraft:overworld run data modify block 29999978 1 29832 Items[0].Slot set value 0b
item replace entity @s hotbar.8 with minecraft:nether_star{SkyblockMenu:1b, HideFlags: 63, display: {Lore: ['{"text":"View all your SkyBlock","color":"gray","italic":false}', '{"text":"progress, including your Skills,","color":"gray","italic":false}', '{"text":"Collections, Recipes, and more!","color":"gray","italic":false}', '{"text":" "}', '{"text":"Click to open!","color":"yellow","italic":false}'], Name: '{"text":"SkyBlock Menu","color":"green","italic":false}'}}
execute in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}
#------------------------------------------#