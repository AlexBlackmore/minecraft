execute unless score $Slot23 I_BWBlank_Score = @s I_BWandID if score $Slot23 I_BWBlank_Score matches 1.. at @p run summon item ~ ~ ~ {Tags:["NOID","NOID23"],PickupDelay:0s,Item:{id:"minecraft:warped_fungus_on_a_stick", Count:1b,tag:{CustomModelData:27,builder:1b,ID:1,store:{}}}}
execute unless score $Slot23 I_BWBlank_Score = @s I_BWandID run data modify entity @e[type=item,limit=1,sort=nearest,tag=NOID,tag=NOID23] Item set from entity @p Inventory[{Slot:23b}]
execute unless score $Slot23 I_BWBlank_Score = @s I_BWandID if entity @e[type=item,limit=1,sort=nearest,tag=NOID,tag=NOID23] run item replace entity @p inventory.14 with air 1