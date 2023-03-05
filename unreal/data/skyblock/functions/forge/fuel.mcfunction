execute unless score @s forge_fuel matches 1.. run scoreboard players set @s forge_fuel 0

tag @s[nbt={SelectedItem:{tag:{Name:"Power Crystal"}}}] add power_crystal
scoreboard players add @s[tag=power_crystal] forge_fuel 48
item modify entity @s[tag=power_crystal] weapon.mainhand skyblock:subtract_item
playsound minecraft:entity.ender_dragon.growl player @s[tag=power_crystal]

tellraw @s ["",{"text":"The Forge","color":"aqua"},{"text":" has ","color":"white"},{"score":{"name":"*","objective":"forge_fuel"},"color":"dark_aqua"},{"text":" fuel remaining.","color":"white"}]

advancement revoke @s only skyblock:commands/forge/fuel
tag @s remove power_crystal