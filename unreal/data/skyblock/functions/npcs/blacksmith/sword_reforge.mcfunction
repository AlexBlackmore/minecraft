execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand


scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add random dummy "Random"
execute at @e[tag=anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 9
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]


data modify entity @e[tag=anvil,scores={random=0},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Gentle"
data modify entity @e[tag=anvil,scores={random=1},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Odd"
data modify entity @e[tag=anvil,scores={random=2},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Fast"
data modify entity @e[tag=anvil,scores={random=3},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Fair"
data modify entity @e[tag=anvil,scores={random=4},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Epic"
data modify entity @e[tag=anvil,scores={random=5},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Sharp"
data modify entity @e[tag=anvil,scores={random=6},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Heroic"
data modify entity @e[tag=anvil,scores={random=7},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Spicy"
data modify entity @e[tag=anvil,scores={random=8},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Legendary"

function skyblock:reforging/apply_reforge


tellraw @s ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:0}}}] -250 points
xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:1}}}] -500 points
xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:2}}}] -1000 points
xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:3}}}] -2500 points
xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:4}}}] -5000 points
xp add @s[advancements={skyblock:commands/npcs/blacksmith=true},nbt={SelectedItem:{tag:{Rarity:5}}}] -10000 points

playsound minecraft:block.anvil.use player @s

advancement revoke @s only skyblock:commands/npcs/blacksmith/sword_reforge

scoreboard objectives remove random