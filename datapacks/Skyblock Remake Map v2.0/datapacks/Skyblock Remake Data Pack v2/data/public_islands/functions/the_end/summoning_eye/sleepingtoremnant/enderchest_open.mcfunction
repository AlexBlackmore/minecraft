#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------SLEEPING TO REMNANT------------#
tag @p add End_HadSleeping
tag @p add InsideEnderChest
data modify storage blue:item ItemSwap set from entity @s Items
execute if data storage blue:item {ItemSwap:[{Slot:0b,tag:{SleepingEye:1b}}]} run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:1b,tag:{SleepingEye:1b}}]} run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:2b,tag:{SleepingEye:1b}}]} run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:3b,tag:{SleepingEye:1b}}]} run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:4b,tag:{SleepingEye:1b}}]} run item replace entity @s container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:5b,tag:{SleepingEye:1b}}]} run item replace entity @s container.5 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:6b,tag:{SleepingEye:1b}}]} run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:7b,tag:{SleepingEye:1b}}]} run item replace entity @s container.7 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:8b,tag:{SleepingEye:1b}}]} run item replace entity @s container.8 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:9b,tag:{SleepingEye:1b}}]} run item replace entity @s container.9 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:10b,tag:{SleepingEye:1b}}]} run item replace entity @s container.10 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:11b,tag:{SleepingEye:1b}}]} run item replace entity @s container.11 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:12b,tag:{SleepingEye:1b}}]} run item replace entity @s container.12 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:13b,tag:{SleepingEye:1b}}]} run item replace entity @s container.13 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:14b,tag:{SleepingEye:1b}}]} run item replace entity @s container.14 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:15b,tag:{SleepingEye:1b}}]} run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:16b,tag:{SleepingEye:1b}}]} run item replace entity @s container.16 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:17b,tag:{SleepingEye:1b}}]} run item replace entity @s container.17 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:18b,tag:{SleepingEye:1b}}]} run item replace entity @s container.18 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:19b,tag:{SleepingEye:1b}}]} run item replace entity @s container.19 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:20b,tag:{SleepingEye:1b}}]} run item replace entity @s container.20 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:21b,tag:{SleepingEye:1b}}]} run item replace entity @s container.21 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:22b,tag:{SleepingEye:1b}}]} run item replace entity @s container.22 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:23b,tag:{SleepingEye:1b}}]} run item replace entity @s container.23 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:24b,tag:{SleepingEye:1b}}]} run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:25b,tag:{SleepingEye:1b}}]} run item replace entity @s container.25 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
execute if data storage blue:item {ItemSwap:[{Slot:26b,tag:{SleepingEye:1b}}]} run item replace entity @s container.26 with minecraft:warped_fungus_on_a_stick{CustomModelData:35,RemnantEye:1b,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Remnant of the Eye","color":"dark_purple","italic":false}]',Lore:['{"text":"Keeps you alive when you are on","color":"gray","italic":false}','{"text":"death\'s door, granting a short","color":"gray","italic":false}','{"text":"period of invincibility.","color":"gray","italic":false}','{"text":"Consumed on use.","color":"gray","italic":false}','{"text":""}','{"text":"NOTE: ONLY WORKS ON THE END","color":"red","italic":false}','[{"text":"ISLAND","color":"red","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}

#------------------------------------------#