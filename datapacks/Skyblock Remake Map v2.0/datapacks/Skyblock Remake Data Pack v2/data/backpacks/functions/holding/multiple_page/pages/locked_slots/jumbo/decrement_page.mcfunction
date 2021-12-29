scoreboard players remove @p backpacks.currpg 1
execute if score @p backpacks.currpg > @p backpacks.pages run scoreboard players set @p backpacks.currpg 1
execute unless score @p backpacks.currpg matches 1.. run scoreboard players set @p backpacks.currpg 0

data remove entity @s Items

execute if score @p backpacks.currpg matches 1 run data modify entity @s Items set from entity @p SelectedItem.tag.Items.Page1
execute if score @p backpacks.currpg matches 1 run item replace entity @s container.26 with arrow{display:{Name:'[{"text":"Down","italic":false,"color":"green"}]'},LockedSlot:1b}

execute if score @p backpacks.currpg matches 2 run data modify entity @s Items set from entity @p SelectedItem.tag.Items.Page2
execute if score @p backpacks.currpg matches 2 run item replace entity @s container.18 with arrow{display:{Name:'[{"text":"Up","italic":false,"color":"green"}]'},LockedSlot:1b}
execute if score @p backpacks.currpg matches 2 run item replace entity @s container.26 with arrow{display:{Name:'[{"text":"Down","italic":false,"color":"green"}]'},LockedSlot:1b}

execute if score @p backpacks.currpg matches 3 run data modify entity @s Items set from entity @p SelectedItem.tag.Items.Page3
execute if score @p backpacks.currpg matches 3 run item replace entity @s container.18 with arrow{display:{Name:'[{"text":"Up","italic":false,"color":"green"}]'},LockedSlot:1b}

execute if data entity @s Items[{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}] run data modify entity @s Items[{id:"minecraft:gray_stained_glass_pane",tag:{LockedSlot:1b}}].Count set value 0b
execute as @p run function backpacks:holding/multiple_page/pages/main