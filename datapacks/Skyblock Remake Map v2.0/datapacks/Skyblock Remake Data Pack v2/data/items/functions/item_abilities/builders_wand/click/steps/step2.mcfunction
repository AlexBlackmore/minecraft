execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 1 run loot spawn ~ ~-10000 ~ mine ~1 ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 2 run loot spawn ~ ~-10000 ~ mine ~ ~1 ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 3 run loot spawn ~ ~-10000 ~ mine ~ ~ ~1 minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 4 run loot spawn ~ ~-10000 ~ mine ~-1 ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 5 run loot spawn ~ ~-10000 ~ mine ~ ~-1 ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] if score $Face I_BWBlank_Score matches 6 run loot spawn ~ ~-10000 ~ mine ~ ~ ~-1 minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[tag=CountAll] positioned ~ ~-10000 ~ run tag @e[type=item,limit=1,sort=nearest] add compare
##########RUN SKYBLOCK RARITY+STUFF##################


####################################################
data modify storage comparetemp Compare set from entity @e[tag=compare,limit=1] Item
kill @e[tag=compare]
data remove storage minecraft:comparetemp Compare.Count
scoreboard players set $CountTotal I_BWBlank_Score 0
#Testing For matching blocks
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:0b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot0
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:1b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot1
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:2b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot2
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:3b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot3
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:4b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot4
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:5b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot5
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:6b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot6
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:7b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot7
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:8b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot8
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:9b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot9
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:10b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot10
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:11b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot11
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:12b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot12
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:13b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot13
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:14b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot14
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:15b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot15
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:16b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot16
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:17b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot17
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:18b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot18
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:19b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot19
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:20b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot20
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:21b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot21
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:22b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot22
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:23b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot23
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:24b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot24
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:25b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot25
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:26b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot26
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:27b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot27
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:28b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot28
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:29b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot29
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:30b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot30
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:31b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot31
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:32b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot32
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:33b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot33
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:34b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot34
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:35b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot35
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={Inventory:[{Slot:-106b}]}] run function items:item_abilities/builders_wand/counting/slotcounting/slot36
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:0b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot37
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:1b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot38
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:2b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot39
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:3b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot40
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:4b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot41
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:5b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot42
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:6b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot43
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:7b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot44
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:8b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot45
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:9b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot46
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:10b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot47
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:11b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot48
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:12b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot49
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:13b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot50
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:14b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot51
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:15b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot52
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:16b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot53
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:17b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot54
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:18b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot55
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:19b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot56
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:20b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot57
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:21b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot58
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:22b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot59
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:23b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot60
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:24b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot61
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:25b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot62
execute if score $CountTotal I_BWBlank_Score < $Build_Count I_BWBlank_Score if entity @s[nbt={SelectedItem:{tag:{store:[{Slot:26b}]}}}] run function items:item_abilities/builders_wand/counting/slotcounting/slot63
execute if score $Build_Count I_BWBlank_Score > $CountTotal I_BWBlank_Score run tellraw @s ["",{"text":"You don't have that many blocks in your inventories!","color":"red"},{"text":"\n"},{"text":"You have (","color":"red"},{"score":{"name":"$CountTotal","objective":"I_BWBlank_Score"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"$Build_Count","objective":"I_BWBlank_Score"},"color":"red"},{"text":") of what you're attempting to place!","color":"red"}]
execute if score $Build_Count I_BWBlank_Score > $CountTotal I_BWBlank_Score run playsound minecraft:block.metal_pressure_plate.click_on master @s ~ ~ ~ .2 .8
execute if score $Build_Count I_BWBlank_Score <= $CountTotal I_BWBlank_Score run function items:item_abilities/builders_wand/click/steps/step3