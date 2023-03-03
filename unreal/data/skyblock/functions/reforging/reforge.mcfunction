execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["reforge_anvil"]}
item replace entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

tag @s[tag=free] add success

execute as @s[advancements={skyblock:commands/reforging/reforge_stones/armor=true}] run function skyblock:reforging/reforge_stones/armor
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/axes=true}] run function skyblock:reforging/reforge_stones/axes
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/bows=true}] run function skyblock:reforging/reforge_stones/bows
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/fishing_rods=true}] run function skyblock:reforging/reforge_stones/fishing_rods
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/hoes=true}] run function skyblock:reforging/reforge_stones/hoes
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/pickaxes=true}] run function skyblock:reforging/reforge_stones/pickaxes
execute as @s[advancements={skyblock:commands/reforging/reforge_stones/swords=true}] run function skyblock:reforging/reforge_stones/swords


item replace entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand
execute as @s[tag=success] run function skyblock:construct_lore

tellraw @s[tag=success] ["",{"text":"You reforged your ","color":"white"},{"nbt":"HandItems[1].tag.display.Name","interpret":true,"entity":"@e[tag=reforge_anvil,limit=1,sort=nearest]"},{"text":" into a "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":"!","color":"white"}]
playsound minecraft:block.anvil.use player @s[tag=success]

item modify entity @s[tag=!free,tag=success] weapon.offhand skyblock:subtract_item
kill @e[tag=reforge_anvil]
tag @s remove success
tag @s remove free

advancement revoke @s from skyblock:commands/reforging