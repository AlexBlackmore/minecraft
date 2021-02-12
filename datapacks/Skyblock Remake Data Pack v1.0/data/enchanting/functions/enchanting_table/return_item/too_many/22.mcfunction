#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.SkyblockMenu run function skyblock:blocks/enchantmenttable/returnitem/22
data remove entity @s Items[{Slot:22b}]
data modify entity @s Items prepend value {Slot: 22b, id: "minecraft:gray_dye", Count: 1b, tag: {TooMany:1b,SkyblockMenu:1b, display: {Lore:['{"text":"You can only enchant 1 item at a","color":"gray","italic":false}','{"text":"time!","color":"gray","italic":false}'],Name: '{"text":"Invalid Stack Size!","color":"red","italic":false}'}}}
#------------------------------------------#