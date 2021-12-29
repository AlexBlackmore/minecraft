#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld if data entity @s Items[{Slot:5b}] run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b}}]}
execute in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Items[{Slot:5b}]
execute as @p in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}

data remove entity @s Items[{Slot:5b}]
data modify entity @s Items prepend value {Slot: 5b, id: "black_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}
#------------------------------------------#