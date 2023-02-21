tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=44..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=56..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=74..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=111..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=146..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=200..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 44 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 56 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 74 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 111 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 146 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 200 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge


data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.4f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.0f

data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 1.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 1.4f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 2.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 3.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 4.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 5.0f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -4000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -7500 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -15000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -40000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -75000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -150000 points