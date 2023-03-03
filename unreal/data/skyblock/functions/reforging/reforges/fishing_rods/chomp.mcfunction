tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=83..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=111..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=150..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=200..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=275..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=382..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 83 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 111 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 150 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 200 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 275 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 382 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=reforge_anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats


data modify entity @e[tag=success,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge

data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 5
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 10
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 17
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 25
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 35
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 50

data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.4f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 5.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 7.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 10.0f

#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.01f
#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.02f
#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.04f
#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.07f
#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.1f
#data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.15f


xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -20000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -40000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -80000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -150000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -300000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -600000 points