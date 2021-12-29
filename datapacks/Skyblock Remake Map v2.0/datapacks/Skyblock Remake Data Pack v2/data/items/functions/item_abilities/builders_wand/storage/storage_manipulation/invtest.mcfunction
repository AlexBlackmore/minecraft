execute in minecraft:overworld run summon item 29999977 1 29832 {PickupDelay:10000,Item:{Count:1b,id:"minecraft:barrier",tag:{temp:1b}}}
tag @e[nbt={Item:{tag:{temp:1b}}}] add temp
tag @s add clear
execute store result score $Slot0 I_BWBlank_Score run data get entity @p Inventory[{Slot:0b}].tag.ID
execute store result score $Slot1 I_BWBlank_Score run data get entity @p Inventory[{Slot:1b}].tag.ID
execute store result score $Slot2 I_BWBlank_Score run data get entity @p Inventory[{Slot:2b}].tag.ID
execute store result score $Slot3 I_BWBlank_Score run data get entity @p Inventory[{Slot:3b}].tag.ID
execute store result score $Slot4 I_BWBlank_Score run data get entity @p Inventory[{Slot:4b}].tag.ID
execute store result score $Slot5 I_BWBlank_Score run data get entity @p Inventory[{Slot:5b}].tag.ID
execute store result score $Slot6 I_BWBlank_Score run data get entity @p Inventory[{Slot:6b}].tag.ID
execute store result score $Slot7 I_BWBlank_Score run data get entity @p Inventory[{Slot:7b}].tag.ID
execute store result score $Slot8 I_BWBlank_Score run data get entity @p Inventory[{Slot:8b}].tag.ID
execute store result score $Slot9 I_BWBlank_Score run data get entity @p Inventory[{Slot:9b}].tag.ID
execute store result score $Slot10 I_BWBlank_Score run data get entity @p Inventory[{Slot:10b}].tag.ID
execute store result score $Slot11 I_BWBlank_Score run data get entity @p Inventory[{Slot:11b}].tag.ID
execute store result score $Slot12 I_BWBlank_Score run data get entity @p Inventory[{Slot:12b}].tag.ID
execute store result score $Slot13 I_BWBlank_Score run data get entity @p Inventory[{Slot:13b}].tag.ID
execute store result score $Slot14 I_BWBlank_Score run data get entity @p Inventory[{Slot:14b}].tag.ID
execute store result score $Slot15 I_BWBlank_Score run data get entity @p Inventory[{Slot:15b}].tag.ID
execute store result score $Slot16 I_BWBlank_Score run data get entity @p Inventory[{Slot:16b}].tag.ID
execute store result score $Slot17 I_BWBlank_Score run data get entity @p Inventory[{Slot:17b}].tag.ID
execute store result score $Slot18 I_BWBlank_Score run data get entity @p Inventory[{Slot:18b}].tag.ID
execute store result score $Slot19 I_BWBlank_Score run data get entity @p Inventory[{Slot:19b}].tag.ID
execute store result score $Slot20 I_BWBlank_Score run data get entity @p Inventory[{Slot:20b}].tag.ID
execute store result score $Slot21 I_BWBlank_Score run data get entity @p Inventory[{Slot:21b}].tag.ID
execute store result score $Slot22 I_BWBlank_Score run data get entity @p Inventory[{Slot:22b}].tag.ID
execute store result score $Slot23 I_BWBlank_Score run data get entity @p Inventory[{Slot:23b}].tag.ID
execute store result score $Slot24 I_BWBlank_Score run data get entity @p Inventory[{Slot:24b}].tag.ID
execute store result score $Slot25 I_BWBlank_Score run data get entity @p Inventory[{Slot:25b}].tag.ID
execute store result score $Slot26 I_BWBlank_Score run data get entity @p Inventory[{Slot:26b}].tag.ID
execute store result score $Slot27 I_BWBlank_Score run data get entity @p Inventory[{Slot:27b}].tag.ID
execute store result score $Slot28 I_BWBlank_Score run data get entity @p Inventory[{Slot:28b}].tag.ID
execute store result score $Slot29 I_BWBlank_Score run data get entity @p Inventory[{Slot:29b}].tag.ID
execute store result score $Slot30 I_BWBlank_Score run data get entity @p Inventory[{Slot:30b}].tag.ID
execute store result score $Slot31 I_BWBlank_Score run data get entity @p Inventory[{Slot:31b}].tag.ID
execute store result score $Slot32 I_BWBlank_Score run data get entity @p Inventory[{Slot:32b}].tag.ID
execute store result score $Slot33 I_BWBlank_Score run data get entity @p Inventory[{Slot:33b}].tag.ID
execute store result score $Slot34 I_BWBlank_Score run data get entity @p Inventory[{Slot:34b}].tag.ID
execute store result score $Slot35 I_BWBlank_Score run data get entity @p Inventory[{Slot:35b}].tag.ID
execute store result score $Slot36 I_BWBlank_Score run data get entity @p Inventory[{Slot:-106b}].tag.ID

execute if score $Slot0 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot0
execute if score $Slot1 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot1
execute if score $Slot2 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot2
execute if score $Slot3 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot3
execute if score $Slot4 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot4
execute if score $Slot5 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot5
execute if score $Slot6 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot6
execute if score $Slot7 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot7
execute if score $Slot8 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot8
execute if score $Slot9 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot9
execute if score $Slot10 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot10
execute if score $Slot11 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot11
execute if score $Slot12 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot12
execute if score $Slot13 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot13
execute if score $Slot14 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot14
execute if score $Slot15 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot15
execute if score $Slot16 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot16
execute if score $Slot17 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot17
execute if score $Slot18 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot18
execute if score $Slot19 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot19
execute if score $Slot20 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot20
execute if score $Slot21 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot21
execute if score $Slot22 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot22
execute if score $Slot23 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot23
execute if score $Slot24 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot24
execute if score $Slot25 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot25
execute if score $Slot26 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot26
execute if score $Slot27 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot27
execute if score $Slot28 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot28
execute if score $Slot29 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot29
execute if score $Slot30 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot30
execute if score $Slot31 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot31
execute if score $Slot32 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot32
execute if score $Slot33 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot33
execute if score $Slot34 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot34
execute if score $Slot35 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot35
execute if score $Slot36 I_BWBlank_Score = @s I_BWandID run function items:item_abilities/builders_wand/storage/invtest/slot36
execute if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:barrier",tag:{temp:1b}}}] run function items:item_abilities/builders_wand/storage/storage_manipulation/guidrop
execute unless entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:barrier",tag:{temp:1b}}}] run tp @s ~ ~-1000000 ~
execute unless entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:barrier",tag:{temp:1b}}}] as @p at @s run function items:item_abilities/builders_wand/storage/newmenu
kill @e[type=item,tag=temp]
#say invtest