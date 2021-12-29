execute unless data entity @s Items[{Slot:18b}].tag.LockedSlot run function menu:return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.LockedSlot run function menu:return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.LockedSlot run function menu:return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.LockedSlot run function menu:return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.LockedSlot run function menu:return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.LockedSlot run function menu:return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.LockedSlot run function menu:return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.LockedSlot run function menu:return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.LockedSlot run function menu:return_item/26

item replace entity @s container.18 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.19 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.20 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.21 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.22 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.23 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.24 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.25 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}
item replace entity @s container.26 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":""}]'}}

execute if data entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}] run data remove entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}]
clear @a gray_stained_glass_pane{LockedSlot:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}}]