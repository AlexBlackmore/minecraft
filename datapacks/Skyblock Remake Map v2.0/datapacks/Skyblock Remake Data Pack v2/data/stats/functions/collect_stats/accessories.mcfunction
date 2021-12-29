#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------RESET-------------------#
scoreboard players set @s P_AHealth 0
scoreboard players set @s P_ADefense 0
scoreboard players set @s P_AStrength 0
scoreboard players set @s P_ASpeed 0
scoreboard players set @s P_ACritChance 0
scoreboard players set @s P_ACritDamage 0
scoreboard players set @s P_AIntelligence 0
scoreboard players set @s P_ASCChance 0
scoreboard players set @s P_AMagicFind 0
scoreboard players set @s P_APetLuck 0
scoreboard players set @s P_ATrueDef 0
scoreboard players set @s P_AAtkSpeed 0
scoreboard players set @s P_AFerocity 0
#----------GET ACCESSORY BAG DATA----------#
function skyblock:multiplayer_storage/get
data modify storage blue:item AccessoryBag set from storage blue:multiplayer_storage data.AccessoryBag
function skyblock:multiplayer_storage/save
#-------ACCESSORY DUPLICATES CHECKER-------#
execute in minecraft:overworld run summon minecraft:armor_stand 17 68 -79 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["AccessoryDupeChecker"]}
scoreboard players set @e[tag=AccessoryDupeChecker] P_AChecker 1
tag @e[scores={P_AChecker=1..},type=armor_stand] remove AccessoryDupeChecker
#----------------INVENTORY-----------------#
execute if data entity @s {Inventory:[{Slot:0b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:0b}]
execute if data entity @s {Inventory:[{Slot:0b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:1b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:1b}]
execute if data entity @s {Inventory:[{Slot:1b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:2b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:2b}]
execute if data entity @s {Inventory:[{Slot:2b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:3b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:3b}]
execute if data entity @s {Inventory:[{Slot:3b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:4b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:4b}]
execute if data entity @s {Inventory:[{Slot:4b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:5b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:5b}]
execute if data entity @s {Inventory:[{Slot:5b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:6b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:6b}]
execute if data entity @s {Inventory:[{Slot:6b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:7b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:7b}]
execute if data entity @s {Inventory:[{Slot:7b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:8b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:8b}]
execute if data entity @s {Inventory:[{Slot:8b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:9b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:9b}]
execute if data entity @s {Inventory:[{Slot:9b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:10b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:10b}]
execute if data entity @s {Inventory:[{Slot:10b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:11b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:11b}]
execute if data entity @s {Inventory:[{Slot:11b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:12b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:12b}]
execute if data entity @s {Inventory:[{Slot:12b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:13b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:13b}]
execute if data entity @s {Inventory:[{Slot:13b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:14b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:14b}]
execute if data entity @s {Inventory:[{Slot:14b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:15b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:15b}]
execute if data entity @s {Inventory:[{Slot:15b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:16b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:16b}]
execute if data entity @s {Inventory:[{Slot:16b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:17b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:17b}]
execute if data entity @s {Inventory:[{Slot:17b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:18b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:18b}]
execute if data entity @s {Inventory:[{Slot:18b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:19b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:19b}]
execute if data entity @s {Inventory:[{Slot:19b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:20b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:20b}]
execute if data entity @s {Inventory:[{Slot:20b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:21b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:21b}]
execute if data entity @s {Inventory:[{Slot:21b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:22b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:22b}]
execute if data entity @s {Inventory:[{Slot:22b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:23b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:23b}]
execute if data entity @s {Inventory:[{Slot:23b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:24b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:24b}]
execute if data entity @s {Inventory:[{Slot:24b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:25b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:25b}]
execute if data entity @s {Inventory:[{Slot:25b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:26b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:26b}]
execute if data entity @s {Inventory:[{Slot:26b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:27b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:27b}]
execute if data entity @s {Inventory:[{Slot:27b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:28b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:28b}]
execute if data entity @s {Inventory:[{Slot:28b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:29b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:29b}]
execute if data entity @s {Inventory:[{Slot:29b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:30b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:30b}]
execute if data entity @s {Inventory:[{Slot:30b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:31b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:31b}]
execute if data entity @s {Inventory:[{Slot:31b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:32b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:32b}]
execute if data entity @s {Inventory:[{Slot:32b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:33b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:33b}]
execute if data entity @s {Inventory:[{Slot:33b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:34b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:34b}]
execute if data entity @s {Inventory:[{Slot:34b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data entity @s {Inventory:[{Slot:35b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from entity @s Inventory[{Slot:35b}]
execute if data entity @s {Inventory:[{Slot:35b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory
#--------------ACCESSORY BAG---------------#
execute if data storage blue:item {AccessoryBag:[{Slot:0b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:0b}]
execute if data storage blue:item {AccessoryBag:[{Slot:0b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:1b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:1b}]
execute if data storage blue:item {AccessoryBag:[{Slot:1b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:2b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:2b}]
execute if data storage blue:item {AccessoryBag:[{Slot:2b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:3b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:3b}]
execute if data storage blue:item {AccessoryBag:[{Slot:3b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:4b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:4b}]
execute if data storage blue:item {AccessoryBag:[{Slot:4b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:5b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:5b}]
execute if data storage blue:item {AccessoryBag:[{Slot:5b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:6b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:6b}]
execute if data storage blue:item {AccessoryBag:[{Slot:6b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:7b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:7b}]
execute if data storage blue:item {AccessoryBag:[{Slot:7b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:8b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:8b}]
execute if data storage blue:item {AccessoryBag:[{Slot:8b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:9b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:9b}]
execute if data storage blue:item {AccessoryBag:[{Slot:9b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:10b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:10b}]
execute if data storage blue:item {AccessoryBag:[{Slot:10b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:11b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:11b}]
execute if data storage blue:item {AccessoryBag:[{Slot:11b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:12b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:12b}]
execute if data storage blue:item {AccessoryBag:[{Slot:12b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:13b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:13b}]
execute if data storage blue:item {AccessoryBag:[{Slot:13b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:14b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:14b}]
execute if data storage blue:item {AccessoryBag:[{Slot:14b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:15b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:15b}]
execute if data storage blue:item {AccessoryBag:[{Slot:15b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:16b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:16b}]
execute if data storage blue:item {AccessoryBag:[{Slot:16b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory

execute if data storage blue:item {AccessoryBag:[{Slot:17b,tag:{Base:{Type:"ACCESSORY"}}}]} run data modify storage blue:item CalcStatAccessory set from storage blue:item AccessoryBag[{Slot:17b}]
execute if data storage blue:item {AccessoryBag:[{Slot:17b,tag:{Base:{Type:"ACCESSORY"}}}]} run function stats:collect_stats/accessory/check_accessory
#-------ACCESSORY DUPLICATES CHECKER-------#
kill @e[scores={P_AChecker=1..},type=armor_stand]
#------------------------------------------#