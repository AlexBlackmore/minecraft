execute at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}

item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.display.Lore set from entity @s SelectedItem.tag.Lore

execute as @s run function skyblock:lore/enchantments

item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]
