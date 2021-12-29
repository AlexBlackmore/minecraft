data remove entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=backpack,distance=0..2] Items
data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=backpack,distance=0..2] Items set from entity @s SelectedItem.tag.Items.Page1
scoreboard players set @s backpacks.currpg 1
item replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=backpack,distance=0..2] container.26 with arrow{display:{Name:'[{"text":"Down","italic":false,"color":"green"}]'},LockedSlot:1b}