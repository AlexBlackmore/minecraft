tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=98..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=146..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=200..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=275..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=382..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=534..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 98 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 146 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 200 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 275 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 382 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 534 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge


data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 8
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 9
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 10
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 11
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 13
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 15

data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 5
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 10
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 18
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 32
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 50
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 70

data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.4f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.6f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 5.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 6.8f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -30000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -75000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -150000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -300000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -600000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -1200000 points