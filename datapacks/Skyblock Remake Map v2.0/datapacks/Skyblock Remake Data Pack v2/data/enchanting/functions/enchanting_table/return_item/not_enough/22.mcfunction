#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.SkyblockMenu run function skyblock:blocks/enchantmenttable/returnitem/22
data remove entity @s Items[{Slot:22b}]
data modify entity @s Items prepend value {Slot: 22b, id: "minecraft:gray_dye", Count: 1b, tag: {NotEnough:1b,SkyblockMenu:1b, display: {Lore:['{"text":"Place an item in the open slot","color":"gray","italic":false}','{"text":"to enchant it!","color":"gray","italic":false}'],Name: '{"text":"Enchant Item","color":"red","italic":false}'}}}
#------------------------------------------#