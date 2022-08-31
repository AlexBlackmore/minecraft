execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:efficiency"}].lvl
tellraw @s[scores={dummy=3..}] {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..19] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[scores={dummy=3..}] add fail
tag @s[level=0..19] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:shears"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success,scores={dummy=0}] weapon.mainhand skyblock:enchantments/increase_efficiency
item modify entity @s[tag=success,scores={dummy=0..1}] weapon.mainhand skyblock:enchantments/increase_efficiency
item modify entity @s[tag=success,scores={dummy=0..2}] weapon.mainhand skyblock:enchantments/increase_efficiency
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Efficiency III","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -20 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success