execute unless data entity @s Items[{Slot:26b}].tag.LockedSlot run function menu:return_item/26
execute if score @p backpacks.currpg matches 1 unless data entity @s Items[{Slot:26b}].tag.LockedSlot run function backpacks:holding/multiple_page/pages/locked_slots/greater/increment_page
execute if score @p backpacks.currpg matches 1 run item replace entity @s container.26 with arrow{display:{Name:'[{"text":"Down","italic":false,"color":"green"}]'},LockedSlot:1b}
execute if data entity @s Items[{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}] run data remove entity @s Items[{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}]
execute if data entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}] run data remove entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}]
clear @a gray_stained_glass_pane{LockedSlot:1b}
clear @a arrow{LockedSlot:1b}
kill @e[type=item,nbt={Item:{tag:{LockedSlot:1b}}}]