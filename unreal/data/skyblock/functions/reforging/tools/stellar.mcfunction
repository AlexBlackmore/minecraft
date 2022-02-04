tag @p[advancements={skyblock:commands/reforging/tools/stellar=true}] add reforge

execute as @p[tag=reforge] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items

scoreboard objectives add rarity dummy "Rarity"
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"white\",\"text\":\"COMMON\"}"]}}}}] rarity 0
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"yellow\",\"text\":\"UNCOMMON\"}"]}}}}] rarity 1
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"aqua\",\"text\":\"RARE\"}"]}}}}] rarity 2
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"light_purple\",\"text\":\"EPIC\"}"]}}}}] rarity 3
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"gold\",\"text\":\"LEGENDARY}"]}}}}] rarity 4
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"dark_aqua\",\"text\":\"MYTHIC\"}"]}}}}] rarity 5
scoreboard players set @p[tag=reforge,nbt={SelectedItem:{tag:{display:{Lore:["{\"bold\":true,\"color\":\"red\",\"text\":\"SPECIAL\"}"]}}}}] rarity 6

execute as @p[tag=reforge] if data entity @s SelectedItem.tag.Recombobulated run scoreboard players add @s rarity 1
execute as @p[tag=reforge] if data entity @s SelectedItem.tag.Thick run scoreboard players add @s rarity 1

tag @p[tag=reforge,scores={rarity=0},level=..91] add fail
tag @p[tag=reforge,scores={rarity=1},level=..122] add fail
tag @p[tag=reforge,scores={rarity=2},level=..166] add fail
tag @p[tag=reforge,scores={rarity=3},level=..228] add fail
tag @p[tag=reforge,scores={rarity=4},level=..315] add fail
tag @p[tag=reforge,scores={rarity=5..},level=..315] add fail
tellraw @p[tag=fail] ["",{"text":"You don't have enough XP to apply that reforge!","color":"red"}]

tellraw @p[tag=reforge,scores={rarity=0}] ["",{"text":"[Cost: 25,000 XP]","italic":true,"color":"gray"}]
tellraw @p[tag=reforge,scores={rarity=1}] ["",{"text":"[Cost: 50,000 XP]","italic":true,"color":"gray"}]
tellraw @p[tag=reforge,scores={rarity=2}] ["",{"text":"[Cost: 100,000 XP]","italic":true,"color":"gray"}]
tellraw @p[tag=reforge,scores={rarity=3}] ["",{"text":"[Cost: 200,000 XP]","italic":true,"color":"gray"}]
tellraw @p[tag=reforge,scores={rarity=4}] ["",{"text":"[Cost: 400,000 XP]","italic":true,"color":"gray"}]
tellraw @p[tag=reforge,scores={rarity=5..}] ["",{"text":"[Cost: 400,000 XP]","italic":true,"color":"gray"}]

xp add @p[tag=reforge,tag=!fail,scores={rarity=0}] -25000 points
xp add @p[tag=reforge,tag=!fail,scores={rarity=1}] -50000 points
xp add @p[tag=reforge,tag=!fail,scores={rarity=2}] -100000 points
xp add @p[tag=reforge,tag=!fail,scores={rarity=3}] -200000 points
xp add @p[tag=reforge,tag=!fail,scores={rarity=4}] -400000 points
xp add @p[tag=reforge,tag=!fail,scores={rarity=5..}] -400000 points

execute as @p[tag=reforge,tag=!fail] unless data entity @s SelectedItem.tag.Reforge run item modify entity @s weapon.mainhand skyblock:reforging/set_attributes_mainhand
execute as @p[tag=reforge,tag=!fail] unless data entity @s SelectedItem.tag.Reforge run item modify entity @s weapon.mainhand skyblock:reforging/set_nbt

execute at @p[tag=reforge,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["reforge"]}
item replace entity @e[type=minecraft:armor_stand,tag=reforge] weapon.mainhand from entity @p[tag=reforge,tag=!fail] weapon.mainhand

execute if entity @p[tag=reforge,scores={rarity=0}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 1
execute if entity @p[tag=reforge,scores={rarity=1}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 1.6
execute if entity @p[tag=reforge,scores={rarity=2}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 2.4
execute if entity @p[tag=reforge,scores={rarity=3}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 3.2
execute if entity @p[tag=reforge,scores={rarity=4}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 4
execute if entity @p[tag=reforge,scores={rarity=5..}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage",Operation:0}].Amount set value 4

execute if entity @p[tag=reforge,scores={rarity=0}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 1
execute if entity @p[tag=reforge,scores={rarity=1}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 1.6
execute if entity @p[tag=reforge,scores={rarity=2}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 2.4
execute if entity @p[tag=reforge,scores={rarity=3}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 3.2
execute if entity @p[tag=reforge,scores={rarity=4}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 4
execute if entity @p[tag=reforge,scores={rarity=5..}] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor",Operation:0}].Amount set value 4

execute if entity @p[tag=reforge] as @e[type=armor_stand,tag=reforge] run data modify entity @s HandItems[0].tag.Reforge set value "Stellar"
item replace entity @p[tag=reforge,tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=reforge,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=reforge]

execute as @p[tag=reforge,tag=!fail] run item modify entity @s weapon.mainhand skyblock:reforging/set_name
execute as @p[tag=reforge,tag=!fail,scores={rarity=0}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_common
execute as @p[tag=reforge,tag=!fail,scores={rarity=1}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_uncommon
execute as @p[tag=reforge,tag=!fail,scores={rarity=2}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_rare
execute as @p[tag=reforge,tag=!fail,scores={rarity=3}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_epic
execute as @p[tag=reforge,tag=!fail,scores={rarity=4}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_legendary
execute as @p[tag=reforge,tag=!fail,scores={rarity=5}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_mythic
execute as @p[tag=reforge,tag=!fail,scores={rarity=6..}] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_special

item modify entity @p[tag=reforge,tag=!fail] weapon.offhand skyblock:subtract_item

playsound minecraft:entity.villager.no player @p[tag=reforge,tag=fail]
playsound minecraft:block.anvil.use player @p[tag=reforge,tag=!fail]

tag @p[tag=fail] remove fail
scoreboard objectives remove rarity
advancement revoke @p[tag=reforge] only skyblock:commands/reforging/tools/stellar
tag @p[tag=reforge] remove reforge