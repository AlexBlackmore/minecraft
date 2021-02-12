#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:anvil Items[{Slot:13b}].tag.SkyblockMenu in minecraft:overworld run setblock 29999978 1 29832 air
execute unless data storage blue:anvil Items[{Slot:13b}].tag.SkyblockMenu in minecraft:overworld if data entity @s Items[{Slot:13b}] run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b}}]}
execute unless data storage blue:anvil Items[{Slot:13b}].tag.SkyblockMenu in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Items[{Slot:13b}]
execute unless data storage blue:anvil Items[{Slot:13b}].tag.SkyblockMenu as @p in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}

execute if entity @s[tag=!AnvilPairSuccess] run data remove entity @s Items[{Slot:13b}]
execute if entity @s[tag=!AnvilPairSuccess] run data modify entity @s Items prepend value {Slot: 13b, id: "anvil", Count:1b, tag: {AnvilCombine:1b,SkyblockMenu:1b, display: {Lore:['{"text":"Combine the Enchantments of","color":"gray","italic":false}','{"text":"the items in the slots to","color":"gray","italic":false}','{"text":"the left and the right below.","color":"gray","italic":false}'],Name: '{"text":"Combine Items","color":"green","italic":false}'}}}

execute if entity @s[tag=AnvilPairSuccess] run loot replace entity @s container.13 loot anvils:normal/menu/combine_item
data modify storage blue:anvil Items[{Slot:13b}] set from entity @s Items[{Slot:13b}]
#------------------------------------------#