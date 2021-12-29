#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:anvil Items[{Slot:3b}].tag.SkyblockMenu in minecraft:overworld run setblock 29999978 1 29832 air
execute unless data storage blue:anvil Items[{Slot:3b}].tag.SkyblockMenu in minecraft:overworld if data entity @s Items[{Slot:3b}] run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b}}]}
execute unless data storage blue:anvil Items[{Slot:3b}].tag.SkyblockMenu in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Items[{Slot:3b}]
execute unless data storage blue:anvil Items[{Slot:3b}].tag.SkyblockMenu as @p in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}

data remove entity @s Items[{Slot:3b}]
execute if entity @s[tag=InSlot1] run data modify entity @s Items prepend value {Slot: 3b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you want to","color":"gray","italic":false}','{"text":"upgrade should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Upgrade","color":"gold","italic":false}'}}}
execute if entity @s[tag=!InSlot1] run data modify entity @s Items prepend value {Slot: 3b, id: "red_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you want to","color":"gray","italic":false}','{"text":"upgrade should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Upgrade","color":"gold","italic":false}'}}}
data modify storage blue:anvil Items[{Slot:3b}] set from entity @s Items[{Slot:3b}]
#------------------------------------------#