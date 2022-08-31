execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:piercing"}] run tag @s add fail
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:piercing"}] run tellraw @s {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..29] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[level=0..29] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:bow"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:crossbow"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success] weapon.mainhand skyblock:enchantments/increase_piercing
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Piercing","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -30 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success