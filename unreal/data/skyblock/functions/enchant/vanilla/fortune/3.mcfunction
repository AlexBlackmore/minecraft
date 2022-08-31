execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:fortune"}].lvl
tellraw @s[scores={dummy=3..}] {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..44] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[scores={dummy=3..}] add fail
tag @s[level=0..44] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_boots"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success,scores={dummy=0}] weapon.mainhand skyblock:enchantments/increase_fortune
item modify entity @s[tag=success,scores={dummy=0..1}] weapon.mainhand skyblock:enchantments/increase_fortune
item modify entity @s[tag=success,scores={dummy=0..2}] weapon.mainhand skyblock:enchantments/increase_fortune
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Fortune III","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -45 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success