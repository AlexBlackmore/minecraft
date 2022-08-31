execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:respiration"}] run tag @s add fail
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:respiration"}] run tellraw @s {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..9] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[level=0..9] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:player_head",tag:{Helmet:true}}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success] weapon.mainhand skyblock:enchantments/increase_respiration
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Respiration I","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -10 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success