

execute unless data entity @s SelectedItem.tag.Skin run item modify entity @s weapon.mainhand skyblock:runecrafting/set_nbt

summon armor_stand ~ ~ ~ {Tags:["anvil"]}

item replace entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.SkullOwner set from entity @s Inventory[{Slot:-106b}].tag.SkullOwner
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Skin set from entity @s Inventory[{Slot:-106b}].tag.Skin
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.SkinRarity set from entity @s Inventory[{Slot:-106b}].tag.SkinRarity

item replace entity @s weapon.mainhand from entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=reforge_anvil,limit=1,sort=nearest]

execute as @s run function skyblock:construct_lore
item modify entity @s weapon.offhand skyblock:subtract_item
advancement revoke @s only skyblock:commands/reforging/skins