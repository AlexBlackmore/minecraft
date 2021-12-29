tag @e[nbt={Item:{tag:{builder:1b}}},limit=1,sort=nearest] add temp
data modify entity @e[tag=temp,limit=1] Item.tag.store set from entity @s Items
tag @e[tag=temp] remove temp
execute as @p at @s run function items:item_abilities/builders_wand/storage/newmenu
tag @p remove waitforit
#say itemtest