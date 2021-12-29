#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:enchanting Items[{Slot:20b}].tag.SkyblockMenu run function skyblock:blocks/enchantmenttable/returnitem/20
data remove entity @s Items[{Slot:20b}]
data modify entity @s Items prepend value {Slot: 20b, id: "minecraft:gray_dye", Count: 1b, tag: {AlreadyDone:1b,SkyblockMenu:1b, display: {Lore:['{"text":"This item has already been","color":"gray","italic":false}','{"text":"enchanted! Use an Anvil to add","color":"gray","italic":false}','{"text":"more enchantments to it!","color":"gray","italic":false}'],Name: '{"text":"Already Enchanted!","color":"red","italic":false}'}}}
#------------------------------------------#