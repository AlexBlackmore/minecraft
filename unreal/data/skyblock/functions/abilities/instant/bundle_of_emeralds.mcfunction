loot spawn ~ ~ ~ loot skyblock:gameplay/bundle_of_emeralds
summon item ~ ~ ~ {Item:{id:"minecraft:bundle",Count:1}}
data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bundle"}}] Item.tag.Items[] set from entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:emerald"}}] Item
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:emerald"}}]

tellraw @s ["",{"text":"That ","color":"white"},{"text":"Goblin","color":"red"},{"text":" was carrying a bundle of ","color":"white"},{"text":"emeralds","color":"gold"},{"text":"!","color":"white"}]
advancement revoke @s only skyblock:commands/instant/bundle_of_emeralds