#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:anvil Items[{Slot:5b}].tag.SkyblockMenu in minecraft:overworld run setblock 29999978 1 29832 air
execute unless data storage blue:anvil Items[{Slot:5b}].tag.SkyblockMenu in minecraft:overworld if data entity @s Items[{Slot:5b}] run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b}}]}
execute unless data storage blue:anvil Items[{Slot:5b}].tag.SkyblockMenu in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Items[{Slot:5b}]
execute unless data storage blue:anvil Items[{Slot:5b}].tag.SkyblockMenu as @p in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}

data remove entity @s Items[{Slot:5b}]
execute if entity @s[tag=InSlot2] run data modify entity @s Items prepend value {Slot: 5b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you are","color":"gray","italic":false}','{"text":"sacrificing in order to","color":"gray","italic":false}','{"text":"upgrade the item on the","color":"gray","italic":false}','{"text":"left should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Sacrifice","color":"gold","italic":false}'}}}
execute if entity @s[tag=!InSlot2] run data modify entity @s Items prepend value {Slot: 5b, id: "red_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you are","color":"gray","italic":false}','{"text":"sacrificing in order to","color":"gray","italic":false}','{"text":"upgrade the item on the","color":"gray","italic":false}','{"text":"left should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Sacrifice","color":"gold","italic":false}'}}}
data modify storage blue:anvil Items[{Slot:5b}] set from entity @s Items[{Slot:5b}]
#------------------------------------------#