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

execute if entity @s[tag=success] run tag @e[tag=reforge_anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats

data modify entity @e[tag=success,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge


data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 5.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 7.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 10.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 13.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 16.0f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 22.0f


xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -30000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -75000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -150000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -300000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -600000 points
xp add @s[tag=!free,tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -1200000 points