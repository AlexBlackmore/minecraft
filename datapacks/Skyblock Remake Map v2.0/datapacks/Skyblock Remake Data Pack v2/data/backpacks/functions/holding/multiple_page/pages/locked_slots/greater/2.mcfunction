execute unless data entity @s Items[{Slot:10b}].tag.LockedSlot run function menu:return_item/10
execute unless data entity @s Items[{Slot:11b}].tag.LockedSlot run function menu:return_item/11
execute unless data entity @s Items[{Slot:12b}].tag.LockedSlot run function menu:return_item/12
execute unless data entity @s Items[{Slot:13b}].tag.LockedSlot run function menu:return_item/13
execute unless data entity @s Items[{Slot:14b}].tag.LockedSlot run function menu:return_item/14
execute unless data entity @s Items[{Slot:15b}].tag.LockedSlot run function menu:return_item/15
execute unless data entity @s Items[{Slot:16b}].tag.LockedSlot run function menu:return_item/16
execute unless data entity @s Items[{Slot:17b}].tag.LockedSlot run function menu:return_item/17

execute unless data entity @s Items[{Slot:19b}].tag.LockedSlot run function menu:return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.LockedSlot run function menu:return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.LockedSlot run function menu:return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.LockedSlot run function menu:return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.LockedSlot run function menu:return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.LockedSlot run function menu:return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.LockedSlot run function menu:return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.LockedSlot run function menu:return_item/26

item replace entity @s container.10 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.11 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.12 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.13 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.14 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.15 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.16 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.17 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}

item replace entity @s container.19 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.20 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.21 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.22 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.23 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.24 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.25 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}
item replace entity @s container.26 with gray_stained_glass_pane{LockedSlot:1b,display:{Name:'[{"text":" "}]'}}

execute unless data entity @s Items[{Slot:18b}].tag.LockedSlot run function menu:return_item/18
execute if score @p backpacks.currpg matches 2 unless data entity @s Items[{Slot:18b}].tag.LockedSlot run function backpacks:holding/multiple_page/pages/locked_slots/greater/decrement_page
execute if score @p backpacks.currpg matches 2 run item replace entity @s container.18 with arrow{display:{Name:'[{"text":"Up","italic":false,"color":"green"}]'},LockedSlot:1b,UpArrow:1b}

execute if data entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}] run data remove entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}]

clear @a gray_stained_glass_pane{LockedSlot:1b}
clear @a arrow{LockedSlot:1b}
kill @e[type=item,nbt={Item:{tag:{LockedSlot:1b}}}]