tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=122..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=200..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=296..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=382..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=426..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=439..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 122 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 200 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 296 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 382 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 426 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 439 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge


data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 2
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 4
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 6
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 8
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 10
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 12

data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.5f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.6f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.7f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.8f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.9f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 1.0f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -50000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -150000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -350000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -600000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -750000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -800000 points