execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["reforge_anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=reforge_anvil] weapon.mainhand from entity @s weapon.mainhand

execute store result score @s dummy run data get entity @p Inventory[{Slot:-106b}].Count
tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] add coal

tag @s[tag=coal] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=13..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=19..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=26..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=37..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=48..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=63..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 13 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 19 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 26 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 37 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 48 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 63 levels to apply a basic reforge to this item, !","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=reforge_anvil,limit=1,sort=nearest] add success


execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/accessories=true}] run function skyblock:npcs/blacksmith/accessories
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/armor=true}] run function skyblock:npcs/blacksmith/armor
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/axes=true}] run function skyblock:npcs/blacksmith/axes
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/bows=true}] run function skyblock:npcs/blacksmith/bows
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/fishing_rods=true}] run function skyblock:npcs/blacksmith/fishing_rods
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/hoes=true}] run function skyblock:npcs/blacksmith/hoes
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/pickaxes=true}] run function skyblock:npcs/blacksmith/pickaxes
execute as @s[tag=success,advancements={skyblock:commands/npcs/blacksmith/swords=true}] run function skyblock:npcs/blacksmith/swords


item replace entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand
execute as @s[tag=success] run function skyblock:construct_lore

tellraw @s[tag=success] ["",{"text":"You reforged your ","color":"white"},{"nbt":"HandItems[1].tag.display.Name","interpret":true,"entity":"@e[tag=reforge_anvil,limit=1,sort=nearest]"},{"text":" into a "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":"!","color":"white"}]
playsound minecraft:block.anvil.use player @s[tag=success]
playsound minecraft:entity.villager.no player @s[tag=!success]


item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item

xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:0}}}] -250 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:1}}}] -500 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:2}}}] -1000 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:3}}}] -2500 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:4}}}] -5000 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:5}}}] -10000 points


scoreboard objectives remove random
tag @s remove coal
kill @e[tag=reforge_anvil]
tag @s[tag=success] remove success

advancement revoke @s from skyblock:commands/reforging