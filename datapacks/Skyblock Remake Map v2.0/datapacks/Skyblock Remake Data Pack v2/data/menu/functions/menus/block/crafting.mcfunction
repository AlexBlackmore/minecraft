#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------BUTTONS------------------#
execute unless data entity @s Items[{Slot:1b}].tag.SkyblockMenu run function crafting:menu/return_item/1
execute unless data entity @s Items[{Slot:5b}].tag.SkyblockMenu run function crafting:menu/return_item/5
execute unless data entity @s Items[{Slot:6b}].tag.SkyblockMenu run function crafting:menu/return_item/6
execute unless data entity @s Items[{Slot:7b}].tag.SkyblockMenu run function crafting:menu/return_item/7
execute unless data entity @s Items[{Slot:8b}].tag.SkyblockMenu run function crafting:menu/return_item/8
execute unless data entity @s Items[{Slot:9b}].tag.SkyblockMenu run function crafting:menu/return_item/9
execute unless data entity @s Items[{Slot:10b}].tag.SkyblockMenu run function crafting:menu/return_item/10
execute unless data entity @s Items[{Slot:14b}].tag.SkyblockMenu run function crafting:menu/return_item/14
execute unless data entity @s Items[{Slot:16b}].tag.SkyblockMenu run function crafting:menu/return_item/16
execute unless data entity @s Items[{Slot:17b}].tag.SkyblockMenu run function crafting:menu/return_item/17
execute unless data entity @s Items[{Slot:18b}].tag.SkyblockMenu run function crafting:menu/return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.SkyblockMenu run function crafting:menu/return_item/19
execute unless data entity @s Items[{Slot:23b}].tag.SkyblockMenu run function crafting:menu/return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.SkyblockMenu run function crafting:menu/return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.SkyblockMenu run function crafting:menu/return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.SkyblockMenu run function crafting:menu/return_item/26
#---------------INIT MENU------------------#
data merge entity @s[scores={M_PageDelay=1}] {Items:[{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {SkyblockMenu:1b, display: {Name: '{"text":""}'}}}]}
#------------------------------------------#