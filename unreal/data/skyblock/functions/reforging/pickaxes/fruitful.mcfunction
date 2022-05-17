execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Fruitful"

function skyblock:reforging/apply_reforge


tellraw @s ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

item modify entity @s weapon.offhand skyblock:subtract_item
xp add @s[nbt={SelectedItem:{tag:{Rarity:0}}}] -100 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:1}}}] -250 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:2}}}] -500 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:3}}}] -1000 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:4}}}] -2500 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:5}}}] -15000 points

playsound minecraft:block.anvil.use player @s

advancement revoke @s only skyblock:commands/reforging/pickaxes/fruitful
