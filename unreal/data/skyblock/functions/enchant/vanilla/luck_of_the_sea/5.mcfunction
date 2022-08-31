execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl
tellraw @s[scores={dummy=5..}] {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..29] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[scores={dummy=5..}] add fail
tag @s[level=0..29] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


item modify entity @s[tag=success,scores={dummy=0}] weapon.mainhand skyblock:enchantments/increase_luck_of_the_sea
item modify entity @s[tag=success,scores={dummy=0..1}] weapon.mainhand skyblock:enchantments/increase_luck_of_the_sea
item modify entity @s[tag=success,scores={dummy=0..2}] weapon.mainhand skyblock:enchantments/increase_luck_of_the_sea
item modify entity @s[tag=success,scores={dummy=0..3}] weapon.mainhand skyblock:enchantments/increase_luck_of_the_sea
item modify entity @s[tag=success,scores={dummy=0..4}] weapon.mainhand skyblock:enchantments/increase_luck_of_the_sea
tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Luck of the Sea V","color":"gray"},{"text":"!","color":"white"}]
xp add @s[tag=success] -30 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success