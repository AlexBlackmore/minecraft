execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:lure"}].lvl
tellraw @s[scores={dummy=4..}] {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..24] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[scores={dummy=4..}] add fail
tag @s[level=0..24] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success,scores={dummy=0}] weapon.mainhand skyblock:enchantments/increase_lure
item modify entity @s[tag=success,scores={dummy=0..1}] weapon.mainhand skyblock:enchantments/increase_lure
item modify entity @s[tag=success,scores={dummy=0..2}] weapon.mainhand skyblock:enchantments/increase_lure
item modify entity @s[tag=success,scores={dummy=0..3}] weapon.mainhand skyblock:enchantments/increase_lure
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Lure IV","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -25 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success