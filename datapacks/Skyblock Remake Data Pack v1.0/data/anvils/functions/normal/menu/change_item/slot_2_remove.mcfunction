#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------ANVIL-------------------#
tag @s remove AnvilPairSuccess
tag @s remove InSlot2
function anvils:normal/menu/return_item/5
function anvils:normal/menu/return_item/6
function anvils:normal/menu/return_item/15
execute unless data storage blue:anvil {Items:[{Slot:20b,id:"minecraft:air"}]} run tag @s add InSlot1
function anvils:normal/menu/return_item/2
function anvils:normal/menu/return_item/3
function anvils:normal/menu/return_item/11

data modify storage blue:anvil TempItemChange1 set from entity @s Items[{Slot:13b}].tag.ItemChange1
data modify storage blue:anvil TempItemChange2 set from entity @s Items[{Slot:13b}].tag.ItemChange2
data remove entity @s Items[{Slot:13b}]
data modify entity @s Items prepend value {Slot: 13b, id: "anvil", Count:1b, tag: {AnvilCombine:1b,SkyblockMenu:1b, display: {Lore:['{"text":"Combine the Enchantments of","color":"gray","italic":false}','{"text":"the items in the slots to","color":"gray","italic":false}','{"text":"the left and the right below.","color":"gray","italic":false}'],Name: '{"text":"Combine Items","color":"green","italic":false}'}}}
data modify entity @s Items[{Slot:13b}].tag.ItemChange1 set from storage blue:anvil TempItemChange1
data modify entity @s Items[{Slot:13b}].tag.ItemChange2 set from storage blue:anvil TempItemChange2

data remove entity @s Items[{Slot:4b}]
data modify entity @s Items prepend value {Slot: 4b, id: "barrier", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Place a target item in the left","color":"gray","italic":false}','{"text":"slot and a sacrifice item in the","color":"gray","italic":false}','{"text":"right slot to combine","color":"gray","italic":false}','{"text":"Enchantments!","color":"gray","italic":false}'],Name: '{"text":"Anvil","color":"red","italic":false}'}}}
#------------------------------------------#