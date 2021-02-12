#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------TURN PANES GREEN-------------#
data remove entity @s Items[{Slot:2b}]
data modify entity @s Items prepend value {Slot: 2b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you want to","color":"gray","italic":false}','{"text":"upgrade should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Upgrade","color":"gold","italic":false}'}}}
data remove entity @s Items[{Slot:3b}]
data modify entity @s Items prepend value {Slot: 3b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you want to","color":"gray","italic":false}','{"text":"upgrade should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Upgrade","color":"gold","italic":false}'}}}
data remove entity @s Items[{Slot:11b}]
data modify entity @s Items prepend value {Slot: 11b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you want to","color":"gray","italic":false}','{"text":"upgrade should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Upgrade","color":"gold","italic":false}'}}}
data remove entity @s Items[{Slot:5b}]
data modify entity @s Items prepend value {Slot: 5b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you are","color":"gray","italic":false}','{"text":"sacrificing in order to","color":"gray","italic":false}','{"text":"upgrade the item on the","color":"gray","italic":false}','{"text":"left should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Sacrifice","color":"gold","italic":false}'}}}
data remove entity @s Items[{Slot:6b}]
data modify entity @s Items prepend value {Slot: 6b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you are","color":"gray","italic":false}','{"text":"sacrificing in order to","color":"gray","italic":false}','{"text":"upgrade the item on the","color":"gray","italic":false}','{"text":"left should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Sacrifice","color":"gold","italic":false}'}}}
data remove entity @s Items[{Slot:15b}]
data modify entity @s Items prepend value {Slot: 15b, id: "lime_stained_glass_pane", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"The item you are","color":"gray","italic":false}','{"text":"sacrificing in order to","color":"gray","italic":false}','{"text":"upgrade the item on the","color":"gray","italic":false}','{"text":"left should be placed in","color":"gray","italic":false}','{"text":"the slot on this side.","color":"gray","italic":false}'],Name: '{"text":"Item To Sacrifice","color":"gold","italic":false}'}}}
#------------------ANVIL-------------------#
tag @s add InSlot1
tag @s add InSlot2
function anvils:normal/combining/create_item
#------------------------------------------#