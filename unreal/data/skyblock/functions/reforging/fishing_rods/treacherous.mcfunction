execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Treacherous"

function skyblock:reforging/apply_reforge


tellraw @s ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

item replace entity @s weapon.offhand with air

playsound minecraft:block.anvil.use player @s
