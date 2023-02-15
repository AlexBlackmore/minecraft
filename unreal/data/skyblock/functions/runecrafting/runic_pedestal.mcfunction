execute unless data entity @s SelectedItem.tag.Rune run item modify entity @s weapon.mainhand skyblock:runecrafting/set_nbt

summon armor_stand ~ ~ ~ {Tags:["anvil"]}

item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Rune set from entity @s Inventory[{Slot:-106b}].tag.Rune

item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil,limit=1,sort=nearest]

execute as @s run function skyblock:construct_lore
item modify entity @s weapon.offhand skyblock:subtract_item
advancement revoke @s only skyblock:commands/runecrafting/runic_pedestal