execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand


scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add random dummy "Random"
execute at @e[tag=anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 18
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]


data modify entity @e[tag=anvil,scores={random=0},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Bizarre"
data modify entity @e[tag=anvil,scores={random=1},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Itchy"
data modify entity @e[tag=anvil,scores={random=2},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Ominous"
data modify entity @e[tag=anvil,scores={random=3},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Pleasant"
data modify entity @e[tag=anvil,scores={random=4},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Pretty"
data modify entity @e[tag=anvil,scores={random=5},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Shiny"
data modify entity @e[tag=anvil,scores={random=6},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Simple"
data modify entity @e[tag=anvil,scores={random=7},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Strange"
data modify entity @e[tag=anvil,scores={random=8},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Vivid"
data modify entity @e[tag=anvil,scores={random=9},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Godly"
data modify entity @e[tag=anvil,scores={random=10},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Demonic"
data modify entity @e[tag=anvil,scores={random=11},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Forceful"
data modify entity @e[tag=anvil,scores={random=12},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Hurtful"
data modify entity @e[tag=anvil,scores={random=13},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Keen"
data modify entity @e[tag=anvil,scores={random=14},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Strong"
data modify entity @e[tag=anvil,scores={random=15},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Superior"
data modify entity @e[tag=anvil,scores={random=16},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Unpleasant"
data modify entity @e[tag=anvil,scores={random=17},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Zealous"

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

advancement revoke @s only skyblock:commands/npcs/blacksmith/tool_reforge

scoreboard objectives remove random