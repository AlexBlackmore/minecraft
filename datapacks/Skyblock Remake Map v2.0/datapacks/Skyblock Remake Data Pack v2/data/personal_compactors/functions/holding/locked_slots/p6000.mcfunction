execute unless data entity @s Items[{Slot:1b}].tag.LockedSlot run function menu:return_item/1
execute unless data entity @s Items[{Slot:2b}].tag.LockedSlot run function menu:return_item/2
execute unless data entity @s Items[{Slot:3b}].tag.LockedSlot run function menu:return_item/3
execute unless data entity @s Items[{Slot:4b}].tag.LockedSlot run function menu:return_item/4
execute unless data entity @s Items[{Slot:5b}].tag.LockedSlot run function menu:return_item/5
execute unless data entity @s Items[{Slot:6b}].tag.LockedSlot run function menu:return_item/6
execute unless data entity @s Items[{Slot:7b}].tag.LockedSlot run function menu:return_item/7
execute unless data entity @s Items[{Slot:8b}].tag.LockedSlot run function menu:return_item/8
execute unless data entity @s Items[{Slot:9b}].tag.LockedSlot run function menu:return_item/9
execute unless data entity @s Items[{Slot:17b}].tag.LockedSlot run function menu:return_item/17
execute unless data entity @s Items[{Slot:18b}].tag.LockedSlot run function menu:return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.LockedSlot run function menu:return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.LockedSlot run function menu:return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.LockedSlot run function menu:return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.LockedSlot run function menu:return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.LockedSlot run function menu:return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.LockedSlot run function menu:return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.LockedSlot run function menu:return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.LockedSlot run function menu:return_item/26

execute unless data entity @s Items[{Slot:10b}].tag.Base.CompactableMaterial run function menu:return_item/10
execute unless data entity @s Items[{Slot:11b}].tag.Base.CompactableMaterial run function menu:return_item/11
execute unless data entity @s Items[{Slot:12b}].tag.Base.CompactableMaterial run function menu:return_item/12
execute unless data entity @s Items[{Slot:13b}].tag.Base.CompactableMaterial run function menu:return_item/13
execute unless data entity @s Items[{Slot:14b}].tag.Base.CompactableMaterial run function menu:return_item/14
execute unless data entity @s Items[{Slot:15b}].tag.Base.CompactableMaterial run function menu:return_item/15
execute unless data entity @s Items[{Slot:16b}].tag.Base.CompactableMaterial run function menu:return_item/16

execute unless data entity @s Items[{Slot:10b}].tag.Base.CompactableMaterial run item replace entity @s container.10 with air
execute unless data entity @s Items[{Slot:11b}].tag.Base.CompactableMaterial run item replace entity @s container.11 with air
execute unless data entity @s Items[{Slot:12b}].tag.Base.CompactableMaterial run item replace entity @s container.12 with air
execute unless data entity @s Items[{Slot:13b}].tag.Base.CompactableMaterial run item replace entity @s container.13 with air
execute unless data entity @s Items[{Slot:14b}].tag.Base.CompactableMaterial run item replace entity @s container.14 with air
execute unless data entity @s Items[{Slot:15b}].tag.Base.CompactableMaterial run item replace entity @s container.15 with air
execute unless data entity @s Items[{Slot:16b}].tag.Base.CompactableMaterial run item replace entity @s container.16 with air

item replace entity @s container.0 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.1 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.2 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.3 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.4 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.5 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.6 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.7 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.8 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.9 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.17 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.18 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.19 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.20 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.21 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.22 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.23 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.24 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.25 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.26 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}

execute unless data entity @s Items[{Slot:10b}] run item replace entity @s container.10 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #1","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:11b}] run item replace entity @s container.11 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #2","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:12b}] run item replace entity @s container.12 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #3","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:13b}] run item replace entity @s container.13 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #4","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:14b}] run item replace entity @s container.14 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #5","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:15b}] run item replace entity @s container.15 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #6","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute unless data entity @s Items[{Slot:16b}] run item replace entity @s container.16 with lime_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":"Auto-Craft Slot #7","color":"green","italic":false}]',Lore:['[{"text":"Put an enchanted item in","italic":false,"color":"gray"}]','[{"text":"this slot to automatically","italic":false,"color":"gray"}]','[{"text":"craft it.","italic":false,"color":"gray"}]']},Base:{CompactableMaterial:0b}}
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:10b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:10b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl1
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:11b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:11b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl2
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:12b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:12b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl3
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:13b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:13b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl4
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:14b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:14b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl5
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:15b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:15b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl6
execute as @e[type=chest_minecart,limit=1,sort=nearest] unless data entity @s {Items:[{Slot:16b,tag:{LockedSlot:1b}}]} unless data entity @s {Items:[{Slot:16b,tag:{PCLoreMod:1b}}]} run function personal_compactors:compact/get_items/modify_lore/6/sl7

clear @a gray_stained_glass_pane{LockedSlot:1b}
clear @a lime_stained_glass_pane{LockedSlot:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_stained_glass_pane",tag:{LockedSlot:1b}}}]