#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute unless data storage blue:anvil Items[{Slot:4b}].tag.SkyblockMenu in minecraft:overworld run setblock 29999978 1 29832 air
execute unless data storage blue:anvil Items[{Slot:4b}].tag.SkyblockMenu in minecraft:overworld if data entity @s Items[{Slot:4b}] run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SkyblockMenu:1b}}]}
execute unless data storage blue:anvil Items[{Slot:4b}].tag.SkyblockMenu in minecraft:overworld run data modify block 29999978 1 29832 Items[0] set from entity @s Items[{Slot:4b}]
execute unless data storage blue:anvil Items[{Slot:4b}].tag.SkyblockMenu as @p in minecraft:overworld run loot give @s mine 29999978 1 29832 minecraft:diamond_pickaxe{drop_contents:true}

data remove entity @s Items[{Slot:4b}]
data modify entity @s[tag=Error1] Items prepend value {Slot: 4b, id: "barrier", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"You cannot combine those items!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=Error2] Items prepend value {Slot: 4b, id: "barrier", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"You cannot add that enchantment","color":"gray","italic":false}','{"text":"to that item!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=!Error1,tag=!Error2] Items prepend value {Slot: 4b, id: "barrier", Count:1b, tag: {SkyblockMenu:1b, display: {Lore:['{"text":"Place a target item in the left","color":"gray","italic":false}','{"text":"slot and a sacrifice item in the","color":"gray","italic":false}','{"text":"right slot to combine","color":"gray","italic":false}','{"text":"Enchantments!","color":"gray","italic":false}'],Name: '{"text":"Anvil","color":"red","italic":false}'}}}

execute if data entity @s Items[{Slot:20b}].tag.Base.AnvilUses if data entity @s Items[{Slot:24b}].tag.Base.AnvilUses run function anvils:normal/combining/create_item
data modify storage blue:anvil Items[{Slot:4b}] set from entity @s Items[{Slot:4b}]
#------------------------------------------#